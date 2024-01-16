<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" rev="stylesheet" href="dlink.css" type="text/css">
<link rel="stylesheet" rev="stylesheet" href="icons.css" type="text/css">
<title></title>
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script type="text/javascript" language="Javascript" src="json2.js"></script>
<script type="text/javascript" language="Javascript" SRC="function.js"></script>
<script type="text/javascript" language="Javascript" SRC="cookies.js"></script>
<script type="text/javascript" language="Javascript" SRC="jQuery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" language="Javascript">
var language = detectOSLanguage();
if (getCookie("language") != null)
{
	var cookieLanguage = getCookie("language");
	if (cookieLanguage == "en" || cookieLanguage == "sc" || cookieLanguage == "tc" || 
		cookieLanguage == "de" || cookieLanguage == "es" || cookieLanguage == "it" || cookieLanguage == "fr")
		language = cookieLanguage;
}
var expiresDate=new Date();expiresDate.setFullYear(2100,1,1);setCookie("language", language, expiresDate);
document.write("<script language=\"JavaScript\" type=\"text/javascript\" src=\"lang/" + language + "/lang_aplist.js\"></scr" + "ipt>");
</script>
<script type="text/javascript" language="Javascript">
var g_sitesurvey_result = "";
function blockUI(block, text, showtext)
{
	if (block)
	{	
		setText(document.getElementById("sBlockText"), text);
		$("#div_block").fadeIn("fast");
		if (showtext)
			$("#div_block_text").fadeIn("fast");
	}
	else
	{
		$("#div_block").fadeOut("fast");
		$("#div_block_text").fadeOut("fast");
	}
}
function init()
{
	loadText();
	doSiteSurvey();
}
function loadText()
{
	setText(document.getElementById("sTitle"), item_name[I_SITE_SURVEY]);
	setText(document.getElementById("sJoin"), item_name[I_JOIN]);
	setText(document.getElementById("sSSID"), item_name[I_SSID]);
    setText(document.getElementById("sBSSID"), item_name[I_BSSID]);
    setText(document.getElementById("sChannel"), item_name[I_CHANNEL]);
	setText(document.getElementById("sEncryption"), item_name[I_ENCRYPTION]);
    setText(document.getElementById("sSignal"), item_name[I_SIGNAL]);
    document.getElementById("btn_refresh1").value = item_name[I_REFRESH];
    document.getElementById("btn_refresh2").value = item_name[I_REFRESH];
    document.getElementById("btn_apply1").value = item_name[I_SELECT];
    document.getElementById("btn_apply2").value = item_name[I_SELECT];
    document.getElementById("btn_exit1").value = item_name[I_EXIT];
    document.getElementById("btn_exit2").value = item_name[I_EXIT];
	document.getElementById("sTitleInfo").innerHTML = des_item_name[D_TITLE_INFO];
}
function doSiteSurvey_callback(http_request)
{
	if (http_request.readyState == 4) {
        if (http_request.status == 200) {
        	parseData(http_request.responseText);
        	setTimeout("blockUI(false, '', 0);", 1000);
        	setTimeout("$('#div_sitesurvey').show('fast');", 1100);
        	setTimeout("initBtnState();", 1200);
        }else {
            alert(pop_msg[PMSG_REQUEST_FAILED]);
        }
    }
}
function onClickJoin()
{
	document.getElementById("btn_apply1").disabled = false;
	document.getElementById("btn_apply2").disabled = false;
}
function addRadio(rowobj,name,pos)
{
	var cellobj = rowobj.insertCell(pos);
	var radioInput = document.createElement('input');
	radioInput.setAttribute('type', 'radio');
	radioInput.setAttribute('name', name);
	radioInput.onclick = function(){ onClickJoin();}
	cellobj.appendChild(radioInput);
}
function addCol(rowobj,text,pos){
	var cellobj = rowobj.insertCell(pos);
	var textNode = document.createTextNode(text);
	cellobj.appendChild(textNode);
}
function addRow(essid,mac,channel,conntype,privacy,signal,idx){
	var obj =  document.getElementById("tb_sitesurvey");
	obj.style.display = "";
	var lastRow = obj.rows.length;
	var row = obj.insertRow(lastRow);
	addRadio(row,"radio_join",0);
	addCol(row,essid,1);
	addCol(row,mac,2);
	addCol(row,channel,3);
	addCol(row,privacy,4);
	addCol(row,signal,5);
	//addCol(row,conntype,6);
}
function deleteRows(tblObj,idx)
{
	while(tblObj.rows.length>idx) {
		tblObj.deleteRow(1)
	}
}
function initBtnState()
{
	document.getElementById("btn_refresh1").disabled = false;
	document.getElementById("btn_apply1").disabled = true;
	document.getElementById("btn_exit1").disabled = false;
	document.getElementById("btn_refresh2").disabled = false;
	document.getElementById("btn_apply2").disabled = true;
	document.getElementById("btn_exit2").disabled = false;
}
function JsonSort(json, key, key2, key3, key4, reverse, reverse2, reverse3, reverse4)
{
	var temp, val, val2;
	var rule;
	var i = 0, j = 0;
	
	for(j=1,jl=json.length;j < jl;j++)
	{
		temp = json[j];
		val  = temp[key];
		i = j-1;
		if (reverse == 1)
			rule  = (i >=0 && json[i][key]<=val);
		else
			rule  = (i >=0 && json[i][key] > val);
		while(rule)
		{
			json[i+1] = json[i];
			i = i-1;
			if (reverse == 1)
				rule  = (i >=0 && json[i][key]<=val);
			else
				rule  = (i >=0 && json[i][key] > val);
		}
		json[i+1] = temp;
	}

	for(j=1,jl=json.length;j < jl;j++)
	{
		temp = json[j];
		val  = temp[key];
		val2  = temp[key2];
		i = j-1;
		
		if (reverse2 == 1)
			rule  = (i >=0 && json[i][key2]<=val2 && json[i][key] == val);
		else
			rule  = (i >=0 && json[i][key2] > val2 && json[i][key] == val);
		while(rule)
		{
			json[i+1] = json[i];
			i = i-1;
			if (reverse2 == 1)
				rule  = (i >=0 && json[i][key2]<=val2 && json[i][key] == val);
			else
				rule  = (i >=0 && json[i][key2] > val2 && json[i][key] == val);
		}
		json[i+1] = temp;
	}
	
	for(j=1,jl=json.length;j < jl;j++)
	{
		temp = json[j];
		val  = temp[key];
		val2  = temp[key2];
		val3  = temp[key3];
		i = j-1;
		
		if (reverse2 == 1)
			rule  = (i >=0 && json[i][key3]<=val3 && json[i][key] == val && json[i][key2] == val2);
		else
			rule  = (i >=0 && json[i][key3] > val3 && json[i][key] == val && json[i][key2] == val2);
		while(rule)
		{
			json[i+1] = json[i];
			i = i-1;
			if (reverse2 == 1)
				rule  = (i >=0 && json[i][key3]<=val3 && json[i][key] == val && json[i][key2] == val2);
			else
				rule  = (i >=0 && json[i][key3] > val3 && json[i][key] == val && json[i][key2] == val2);
		}
		json[i+1] = temp;
	}
	
	for(j=1,jl=json.length;j < jl;j++)
	{
		temp = json[j];
		val  = temp[key];
		val2  = temp[key2];
		val3  = temp[key3];
		val4  = temp[key4];
		i = j-1;
		
		if (reverse2 == 1)
			rule  = (i >=0 && json[i][key4]<=val4 && json[i][key] == val && json[i][key2] == val2 && json[i][key3] == val3);
		else
			rule  = (i >=0 && json[i][key4] > val4 && json[i][key] == val && json[i][key2] == val2 && json[i][key3] == val3);
		while(rule)
		{
			json[i+1] = json[i];
			i = i-1;
			if (reverse2 == 1)
				rule  = (i >=0 && json[i][key4]<=val4 && json[i][key] == val && json[i][key2] == val2 && json[i][key3] == val3);
			else
				rule  = (i >=0 && json[i][key4] > val4 && json[i][key] == val && json[i][key2] == val2 && json[i][key3] == val3);
		}
		json[i+1] = temp;
	}

	return json;
}
function parseData(sites){
	//var connArr =  new Array("Ad-Hoc","Infrastructure","Automatic");
	//var privacyArr = new Array("No","WEP","WPA-PSK","WPA2-PSK","WPA-PSK/WPA2-PSK");
	var connArr =  new Array(item_name[I_ADHOC],item_name[I_INFRASTRUCTURE],item_name[I_AUTOMATIC]);
	var privacyArr = new Array(item_name[I_NO],item_name[I_WEP],item_name[I_WPAPSK],item_name[I_WPA2PSK],item_name[I_WPAWPA2PSK]);	
	g_sitesurvey_result = sites;
	//var jobj = JSON.parse(JSON.stringify(sites));
	var jobj = JSON.parse(sites);
	//sort sites by ssid
	jobj.mySites = JsonSort(jobj.mySites, 'signal', 'essid', 'channel', 'encryption', 1, 0, 0, 0);
	//sort end
	for(var i=0;i<jobj.mySites.length;i++){
		addRow(jobj.mySites[i].essid,jobj.mySites[i].mac,jobj.mySites[i].channel,connArr[jobj.mySites[i].conntype],privacyArr[jobj.mySites[i].privacy],jobj.mySites[i].signal+"%",i+1);
	}
}
function doSiteSurvey()
{
	document.getElementById("btn_refresh1").disabled = true;
	document.getElementById("btn_apply1").disabled = true;
	document.getElementById("btn_exit1").disabled = true;
	document.getElementById("btn_refresh2").disabled = true;
	document.getElementById("btn_apply2").disabled = true;
	document.getElementById("btn_exit2").disabled = true;
	blockUI(true, item_name[I_SEARCHING], 1);
	g_sitesurvey_result = "";
	deleteRows(document.getElementById("tb_sitesurvey"),1);
	$("#div_sitesurvey").hide();
	makeRequest("/cgi/admin/wsitesurvey.cgi", null, doSiteSurvey_callback);
}
function OnSelectWlan()
{
	//var jobj = JSON.parse(JSON.stringify(g_sitesurvey_result));
	var jobj = JSON.parse(g_sitesurvey_result);
	//sort sites by ssid
	jobj.mySites = JsonSort(jobj.mySites, 'signal', 'essid', 'channel', 'encryption', 1, 0, 0, 0);
	//sort end
	var selectIndex = -1;
	var radio_join = document.getElementsByName("radio_join");
	for (var i = 0; i < radio_join.length; i++)
	{
		if (radio_join[i].checked == true)
		{
			selectIndex = i;
			break;
		}
	}
	if (selectIndex == -1)
		return;
	opener.OnSelectWlan(jobj.mySites[selectIndex].essid, jobj.mySites[selectIndex].conntype, jobj.mySites[selectIndex].channel, jobj.mySites[selectIndex].privacy, jobj.mySites[selectIndex].encryption);
  	window.close();
}
</script>
</head>
<body topmargin="1" leftmargin="0" rightmargin="0">
  <div id="div_block" class="myMask">
  </div>
  <div id="div_block_text" class="myMaskText" align="center" style="text-align: center;">
    <table cellpadding="2" cellspacing="2" align="center" style="text-align: center;" width="100%" height="100%">
	  <tr>
	    <td bgcolor="#FF6F00">
		  <span id="sBlockText">Saving</span>
		  <span>...</span>
		</td>
	  </tr>
	</table>
  </div>
  <table border="0" cellpadding="2" cellspacing="0" align="center" bgcolor="#FFFFFF" bordercolordark="#FFFFFF" width=100%>
    <tr>
      <td valign="top" id="maincontent_container">
        <div id="maincontent">
          <!-- === BEGIN MAINCONTENT === -->
          <div id=box_header>
            <h1><span id="sTitle">Site Survey</span></h1>
            <span id="sTitleInfo">
              This will scan and display all the available wireless networks 
		      surrounding your device. Click <b>Refresh</b> to rescan. Select a 
		      wireless network and then click <b>Select</b> to proceed.
		    </span>  
          </div>
          <div class=box>
            <table border=0 cellspacing=0 cellpadding=0 width=90%>
              <tr><td><span>&nbsp;&nbsp;</span></td></tr>
              <tr>
                <td>
                  <INPUT type="button" width="80" id="btn_refresh1" value=" Refresh " onclick="doSiteSurvey()">
                  <INPUT type="button" width="80" id="btn_apply1" name="button_select" value=" Select " onclick="OnSelectWlan()" disabled>
                  <INPUT type="button" width="80" id="btn_exit1" value="   Exit   " onclick="window.close();">
                </td>
              </tr>
              <tr>
                <td>
                  <table cellspacing=1 cellpadding=1 BORDER=0 width=100%>
                    <TR>
            	      <TD>
            	        <div id="div_sitesurvey">
              	          <table id="tb_sitesurvey" cellspacing=0 cellpadding=3 BORDER=1 class=maintext>
              		        <TR>
                		      <TD width=5%><span id="sJoin">Join</span></TD>
                		      <TD width=40%>&nbsp;<span id="sSSID">SSID</span></TD>
                		      <TD width=24%><span id="sBSSID">BSSID</span></TD>
                		      <TD width=10%><span id="sChannel">Channel</span></TD>
                		      <TD width=13%><span id="sEncryption">Encryption</span></TD>
                		      <TD width=12% nowrap><span id="sSignal">Signal %</span></TD>
              		        </TR>
              		      </table>
              		    </div>
              	      </td>
        		    </tr>
        	      </table>
        	    </td>
              </tr>
              <tr>
                <td>
           	      <INPUT type="button" width="80" id="btn_refresh2" value=" Refresh " onclick="doSiteSurvey()">
                  <INPUT type="button" width="80" id="btn_apply2" name="button_apply" value=" Select " onclick="OnSelectWlan()" disabled>
                  <INPUT type="button" width="80" id="btn_exit2" value="   Exit   " onclick="window.close();">
        	    </td>
              </tr>
            </table>
          </div>
          <!-- === END MAINCONTENT === -->
        </div>                                
      </td>
    </tr>
  </table>
  <script type="text/javascript" language="javascript">init();</script>
</body>
</html>
