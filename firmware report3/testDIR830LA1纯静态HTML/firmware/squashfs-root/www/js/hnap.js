function changText(str)
{
	var ar = str.split('');
	for(var i=0;i<ar.length;i++)
	{
		if(ar[i].charCodeAt(0)>=65&&ar[i].charCodeAt(0)<=90)	{	ar[i]= ar[i].toLowerCase();		}
		else	{	ar[i] = ar[i].toUpperCase();	}
	}
	str = "";
	for(var i=0;i<ar.length;i++)	{	str += ar[i];	}
	return str;
} 
function HNAP_XML(){}
HNAP_XML.prototype =
{
	XML_hnap: null,
	GetXML: function(hnap, input_array)
	{
		var self = this;
		var ajaxObj = new HTTPClient();
        ajaxObj.createRequest();
        ajaxObj.onCallback =
        function (xml)
        {
            ajaxObj.release();
            xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
            if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
            if(input_array != null)
            {           	
            	for(var i=0; i < input_array.length; i=i+2)
            	{xml.Set(hnap+"/"+input_array[i], input_array[i+1]);}
        	}
        	self.XML_hnap = xml;
        }
        ajaxObj.setHeader("Content-Type", "text/xml");
        ajaxObj.requestMethod = "GET";
        ajaxObj.requestAsyn = false;
        ajaxObj.sendRequest("/hnap/"+ hnap + ".xml?v=TimeStamp_QzwsxDcRfvTGByHn");
		if(hnap.substr(0,3)=="Get" && hnap!="GetMultipleHNAPs")
		{
            var ajaxObj = GetAjaxObj("GetXMLFromHNAP");
            ajaxObj.createRequest();
            ajaxObj.onCallback =
            function (xml)
            {
                ajaxObj.release();
                ajaxObj = null;
            	xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
            	if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
                self.XML_hnap = xml;
            }
            ajaxObj.requestAsyn = false;
            ajaxObj.clearAllHeaders();
            ajaxObj.setHeader("Content-Type", "text/xml");
            ajaxObj.setHeader("Accept", "text/xml");
            ajaxObj.setHeader("SOAPACTION", '"http://purenetworks.com/HNAP1/'+hnap+'"');
			var PrivateKey = localStorage.getItem('PrivateKey');
			if(PrivateKey == null) PrivateKey = "withoutloginkey"; //For login action or another action without login.
			//The current time length should fit the size of integer in Code. The period of the current time is almost 30 years.
			var current_time = new Date().getTime();
			current_time = Math.floor(current_time / 1000) % 2000000000;
			var URI = '"http://purenetworks.com/HNAP1/'+hnap+'"';
			var auth = hex_hmac_md5(PrivateKey, current_time.toString()+URI);
			auth = changText(auth);
			ajaxObj.setHeader("HNAP_AUTH", auth + " " + current_time);
            ajaxObj.sendRequest("/HNAP1/", this.XML_hnap.XDoc);
			
			return 	this.XML_hnap;
		}
		
		return 	this.XML_hnap;
	},
	GetXMLAsync: function(hnap, input_array, behavior, CallbackFunc)
	{
		var self = this;
		var ajaxObj = new HTTPClient();
        ajaxObj.createRequest();
        ajaxObj.onCallback =
        function (xml)
        {
            ajaxObj.release();
            ajaxObj = null;
            xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
            if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
            if(input_array != null)
            {           	
            	for(var i=0; i < input_array.length; i=i+2)
            	{xml.Set(hnap+"/"+input_array[i], input_array[i+1]);}
        	}
        	self.XML_hnap = xml;

        	switch (behavior)
        	{
        		case "GetXML":
                    CallbackFunc(xml);	
                    break;
        		case "GetValue":	
                    theNamingIsBad(self.XML_hnap, hnap, input_array, CallbackFunc);	
                    break;
        	}
        }
        ajaxObj.setHeader("Content-Type", "text/xml");
        ajaxObj.requestMethod = "GET";
        ajaxObj.requestAsyn = true;
        ajaxObj.sendRequest("/hnap/"+ hnap + ".xml?v=TimeStamp_QzwsxDcRfvTGByHn");
        
        var theNamingIsBad = function(selfhnap, hnap, input_array, CallbackFunc)
        {
			var ajaxObj2 = new HTTPClient();

	        ajaxObj2.createRequest();
	        ajaxObj2.onCallback =
	        function (xml)
	        {  
	            ajaxObj2.release();
                ajaxObj2 = null;
	            xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
	            if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
	            if(input_array != null)
	            {           	
	            	for(var i=0; i < input_array.length; i=i+2)
	            	{xml.Set(hnap+"/"+input_array[i], input_array[i+1]);}
	        	}
	        	self.XML_hnap = xml;
	        	CallbackFunc(xml);
	        }
	        ajaxObj2.requestAsyn = true;
            ajaxObj2.clearAllHeaders();
            ajaxObj2.setHeader("Content-Type", "text/xml");
            ajaxObj2.setHeader("Accept", "text/xml");
            ajaxObj2.setHeader("SOAPACTION", '"http://purenetworks.com/HNAP1/'+hnap+'"');
			var PrivateKey = localStorage.getItem('PrivateKey');
			if(PrivateKey == null) PrivateKey = "withoutloginkey"; //For login action or another action without login.
			//The current time length should fit the size of integer in Code. The period of the current time is almost 30 years.
			var current_time = new Date().getTime();
			current_time = Math.floor(current_time / 1000) % 2000000000;
			var URI = '"http://purenetworks.com/HNAP1/'+hnap+'"';
			var auth = hex_hmac_md5(PrivateKey, current_time.toString()+URI);
			auth = changText(auth);
			ajaxObj2.setHeader("HNAP_AUTH", auth + " " + current_time);
            // console.log("send request: " + hnap);
            ajaxObj2.sendRequest("/HNAP1/", selfhnap.XDoc);
        }
	},
	SetXML: function(hnap, xml)
	{
		var self = this;
        var ajaxObj = new HTTPClient();
        ajaxObj.createRequest();
        ajaxObj.onCallback =
        function (xml)
        {
            ajaxObj.release();
            ajaxObj = null;
            xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
            if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
            self.XML_hnap = xml;
        }
        ajaxObj.requestAsyn = false;
        ajaxObj.clearAllHeaders();
        ajaxObj.setHeader("Content-Type", "text/xml");
        ajaxObj.setHeader("Accept", "text/xml");
        ajaxObj.setHeader("SOAPACTION", '"http://purenetworks.com/HNAP1/'+hnap+'"');
		var PrivateKey = localStorage.getItem('PrivateKey');
		if(PrivateKey == null) PrivateKey = "withoutloginkey"; //For login action or another action without login.
		//The current time length should fit the size of integer in Code. The period of the current time is almost 30 years.
		var current_time = new Date().getTime();
		current_time = Math.floor(current_time / 1000) % 2000000000;
		var URI = '"http://purenetworks.com/HNAP1/'+hnap+'"';
		var auth = hex_hmac_md5(PrivateKey, current_time.toString()+URI);
		auth = changText(auth);
		ajaxObj.setHeader("HNAP_AUTH", auth + " " + current_time);
        ajaxObj.sendRequest("/HNAP1/", xml.XDoc);
        
        return 	this.XML_hnap;
	},
	SetXMLAsync: function(hnap, xml, CallbackFunc)
	{
		var self = this;
        var ajaxObj = new HTTPClient();
        ajaxObj.createRequest();
        ajaxObj.onCallback =
        function (xml)
        {
            ajaxObj.release();
            ajaxObj = null;
            xml.AnchorNode = xml.XDoc.getElementsByTagName("soap:Body")[0];
            if(xml.AnchorNode==undefined || xml.AnchorNode==null) xml.AnchorNode = xml.XDoc.getElementsByTagName("Body")[0];
            CallbackFunc(xml);
        }
        ajaxObj.requestAsyn = true;
        ajaxObj.clearAllHeaders();
        ajaxObj.setHeader("Content-Type", "text/xml");
        ajaxObj.setHeader("Accept", "text/xml");
        ajaxObj.setHeader("SOAPACTION", '"http://purenetworks.com/HNAP1/'+hnap+'"');
		
		var PrivateKey = localStorage.getItem('PrivateKey');
		if(PrivateKey == null) PrivateKey = "withoutloginkey"; //For login action or another action without login.
		//The current time length should fit the size of integer in Code. The period of the current time is almost 30 years.
		var current_time = new Date().getTime();
		current_time = Math.floor(current_time / 1000) % 2000000000;
		var URI = '"http://purenetworks.com/HNAP1/'+hnap+'"';
		var auth = hex_hmac_md5(PrivateKey, current_time.toString()+URI);
		auth = changText(auth);
		ajaxObj.setHeader("HNAP_AUTH", auth + " " + current_time);
        ajaxObj.sendRequest("/HNAP1/", xml.XDoc);
	}
};
