/** @define {string} */
var SOAP_NAMESPACE = "http://purenetworks.com/HNAP1/";

/**
 * @constructor
 */
function SOAPAction()
{
};

// @prototype
SOAPAction.prototype = 
{
	//property
}

// Summary:
//  Generate the xml content for the SOAP action
SOAPAction.prototype.createValueBody = function(aPara)
{
	// BETTER TO KNOW WHAT XML AND JSON ARE

	var body = "";
    for (var obj in aPara)
    {
		if(obj.charAt(0) == '_')
			continue;

		if((typeof obj != "string") || (obj.length > 0))
        {
            //if ([obj.Attribute count] > 0)
			if(0)
            {
                //[aBody appendFormat:@"<%@ xmlns=\"%@\">", obj.Name, [obj.Attribute valueForKey:SOAP_NAMESPACE_NAME]];
				body += "<"+obj+" "+SOAP_NAMESPACE_NAME + ">";
			}
            else
            {
				body += "<"+obj+">";
            }
            
            // when we don't have children to set
			if((typeof aPara[obj] == "object")&&(aPara[obj] != null))
            {
            	// wtf is obj.Children???????????
				// body += this.createValueBody(obj.Children);
				body += this.createValueBody(aPara[obj]);
            }
            else
            {            
				body += aPara[obj];
            }
            
			body += "</"+obj+">";
        }
        else
        {
			body += "<" + obj + "/>";
        }
    }
	return body;
}

// Summary:
//  To create a SOAP XML content
SOAPAction.prototype.createActionBody = function(aSoapAction, aPara)
{
	var body = '<?xml version="1.0" encoding="utf-8"?>';
	body += '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">';
	body += "<soap:Body>";

    if ((typeof aPara == "object")&&(aPara != null))
    {
		body += "<" + aSoapAction + ' xmlns="' + SOAP_NAMESPACE + '">';
		body += this.createValueBody(aPara);
		body += "</" + aSoapAction + ">";
    }
    else
    {
		body += "<"+aSoapAction+' xmlns="'+SOAP_NAMESPACE+'" />';
		
    }
	body += "</soap:Body></soap:Envelope>";
    
    return body;
}

// Summary:
//  Send a SOAP action to the device
SOAPAction.prototype.sendSOAPAction = function(aSoapAction, aPara, output)
{
	//init
	var deferred = $.Deferred();	
	var self = this;
	self.output = output;
	
    //SOAP Message to Send
	var body = self.createActionBody(aSoapAction, aPara);
	var soapActionURI = '"'+SOAP_NAMESPACE + aSoapAction + '"';
	
	//auth
	var PrivateKey = localStorage.getItem('PrivateKey');
	if(PrivateKey == null)
		PrivateKey = "withoutloginkey"; //For login action or another action without login.
	//The current time length should fit the size of integer in Code. The period of the current time is almost 30 years.
	var current_time = new Date().getTime();
	current_time = Math.floor(current_time / 1000) % 2000000000;
	current_time = current_time.toString();
	var auth = hex_hmac_md5(PrivateKey, current_time+soapActionURI);
	auth = auth.toUpperCase() + " " + current_time;
	
    //Construct the HTML POST
	$.ajax({
		url:"/HNAP1/",
		type:"POST",
		contentType:'text/xml; charset="utf-8"',
		headers:{
			"SOAPAction":soapActionURI,
			"HNAP_AUTH":auth
		},
		data:body,
		success: function(xml){
			//parse xml to object data structure
			var output = self.output;
			var soapResult = $(xml).find(aSoapAction+"Result").text().toLowerCase();
			
			if(output != null)
			{
				//get result		
				if(soapResult == "error")
				{
					console.log(aSoapAction + " error");
					return null;
				}

				//parse xml recursively
				function xml2Object(output, xml)
				{
					var outputObj = output;
					
					//search array
					for(var obj in outputObj)
					{	
						if($.isArray(outputObj[obj]) == true)
						{
							var firstElement = true;
							//console.log("array: "+obj);			
							xml.find(obj).each(function(){
								var tag = $(this);
								var newObj = {};
								
								$.extend(true, newObj, outputObj[obj][0]);
								newObj = xml2Object(newObj, tag);
							
								if(firstElement == true)
								{
									outputObj[obj].splice(0,1);
									firstElement = false;
								}

								outputObj[obj].push(newObj);
							});

						}
						else
						{
							xml.children().each(function(){
								var tag = $(this);
								var tagName = tag[0].tagName.toLowerCase();

								if(tagName == obj.toLowerCase())
								{
									if($.type(outputObj[obj]) == "object")
									{
										if($.isArray(outputObj[obj]) == true)
										{										
											return true;	//continue
										}
										outputObj[obj] = xml2Object(outputObj[obj], tag);
										return false;	//break
									}
									else
									{
										outputObj[obj] = tag.text();
										return false;	//break
									}
									
								}
							});
						
						}

					}

					return outputObj;
				}


				//parse xml
				// BETTER TO LEARN HOW TO USE PRIVATE FUNCTION
				output = xml2Object(output, $(xml).find(aSoapAction+"Response"));

			}
			else
			{
				output = new Object();
			}
			output[aSoapAction+"Result"] = soapResult;

			deferred.resolve(output);
		},
		error: function(){
			alert(aSoapAction+"error");
		}
	});

	return deferred.promise();
}

// Summary:
//  Copy a SOAP action structure (ex: Get => Set)
SOAPAction.prototype.copyObject = function(dest, source)
{
    for (var destObj in dest)
    {
		for(var srcObj in source)
		{
			if(destObj == srcObj)
			{
				if($.type(dest[destObj]) == "object")
				{
					if($.isArray(dest[destObj]) == true)
					{
					
					}
					this.copyObject(dest[destObj], source[srcObj]);					
				}
				else
				{
					dest[destObj] = source[srcObj];
					break;
				}
			}
		}
	}
}