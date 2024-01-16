<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><!-- InstanceBegin template="/Templates/basic.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>

<title>TRENDnet | TEW-812DRU | <!--#tr id="project.desc"-->AC1750 Dual Band Wireless Router<!--#endtr--></title>
<!-- InstanceBeginEditable name="Page Title" -->

<!-- InstanceEndEditable -->

<link href="../style/style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="../style/frame.css" rel="stylesheet" type="text/css" media="screen" />
<!-- InstanceBeginEditable name="Local Styles" -->
	<style type="text/css">
	/*
	 * Styles used only on this page.
	 */
	</style>
	<!-- InstanceEndEditable -->

<script type="text/javascript" src="../scripts/jquery.min.js"></script>
<script type="text/javascript" src="../scripts/ddaccordion.js"></script>
<script type="text/javascript" src="../scripts/um.js?20120904<% nvram_get("Language"); %>"></script>
<script type="text/javascript" src="../scripts/func.js?20120904<% nvram_get("Language"); %>"></script>
<script type="text/javascript" src="../scripts/overlib.js"></script>
<!-- InstanceBeginEditable name="Include Files" -->

	<!-- InstanceEndEditable -->
<script language="JavaScript" type="text/javascript">
var langset = "<% nvram_get("Language"); %>";
var lang = (langset=="")? "EN":langset;
function doLangSet() {
	document.getElementById("redirect_url").value = location.pathname;
	document.Lang.submit();
}

function expand_path()
{
	//Expand menu by pathname
	var path = location.pathname;
	if(path.indexOf("home.asp") > -1)
		ddaccordion.expandone('expandable', 0);
	if(path.indexOf("wireless.asp") > -1)
		ddaccordion.expandone('expandable', 1);
	if((path.indexOf("guestnetwork.asp") > -1 || path.indexOf("guest_lan.asp") > -1))
		ddaccordion.expandone('expandable', 2);
	if(path.indexOf("parental.asp") > -1)
		ddaccordion.expandone('expandable', 3);
}

function menu_adjust() {
	if (lang=="DE") {
	} else	if (lang=="FR") {
	} else	if (lang=="ESP") {
	} else	if (lang=="RU") {
		document.getElementById("mainmenu_4").style.margin = "-12px 0px 0px 5px";
	}
}

function template_load() {
	expand_path();

	//Language default selection
	var i;
	var lang_element = document.getElementById("langSelection");
	for (i=0; i<lang_element.options.length; i++) {
		if (lang == lang_element.options[i].value) {
			lang_element.options.selectedIndex = i;
			break;
		}
	}
	page_load();
	menu_adjust();
}
</script>
<!-- InstanceBeginEditable name="Scripts" -->
<script language="JavaScript" type="text/javascript">
<!--

function checkIPStartEnd(start,end) {
	if(atoi(start, 4) > atoi(end, 4))
		return false;
	return true;
}

function applyCheck()
{
    var currentLanIP = document.getElementById("currentLanIP").value;
    var currentLanMask = document.getElementById("currentLanMask").value;

	//URL Filter
    var TOTALURL = document.getElementById("filter_url").value;
    for (var i = 0; i < TOTALURL; i++)
    {
	    var reg = /[;,\"\'#&*()\\|`<> ]/;
		var reg2 = /(http\:\/\/)?/;
        var urlElement = document.getElementsByName("filter_url_addr" + i)[0];

        // 1. If the values of the column in this row is all blank, it will pass the check.
        if (isBlankString(urlElement.value))
        {
            continue;
        }

        if (isBlankString(urlElement.value))
        {
            urlElement.focus();
            alert("<!--#tr id="url.error.blank"-->The URL can't be a blank string.<!--#endtr-->");
            return false;
        }

        if (reg.test(urlElement.value))
        {
            urlElement.focus();
            alert("<!--#tr id="url.error.invalid.2"-->The URL can't include the following characters<!--#endtr-->: ; , \" \' # & * ( ) \\ | ` < > ");
            return false;
        }
		
		//Griffin -replace http://
		document.getElementsByName("filter_url_addr" + i)[0].value = urlElement.value.replace(reg2, "");
	}

	//IP Filter
    var TOTALIP = document.getElementById("filter_ip").value;
    for (var i = 0; i < TOTALIP; i++)
    {
	    var reg = /[;,\"\'#&*()\\|`<> ]/;
		var reg2 = /(http\:\/\/)?/;
        var lanIPStartElement = document.getElementsByName("filter_ip_from_start" + i)[0];
        var lanIPEndElement = document.getElementsByName("filter_ip_from_end" + i)[0];

        // 1. If the values of the column in this row is all blank, it will pass the check.
        if (isBlankString(lanIPStartElement.value) && isBlankString(lanIPEndElement.value))
        {
            continue;
        }

        // 2. Check IP Address Format
        var isStartBlank = isBlankString(lanIPStartElement.value);
        var isEndBlank = isBlankString(lanIPEndElement.value);
        var isCheckSameSubnet = true;
        
        if (isStartBlank && !isEndBlank)
        {
            if (checkIpAddr(lanIPEndElement, false))
                lanIPStartElement.value = lanIPEndElement.value;
            else
            {
                lanIPEndElement.focus();
                alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");  
                return false;
            }
        }
        else  if (!isStartBlank && isEndBlank)
        {
            if (checkIpAddr(lanIPStartElement, false))
                lanIPEndElement.value = lanIPStartElement.value;
            else
            {
                lanIPStartElement.focus();
                alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");  
                return false;
            }
        }
        else  if (!isStartBlank && !isEndBlank)
        {
            if (!checkIpAddr(lanIPStartElement, false))
            {
                lanIPStartElement.focus();
                alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
                return false;
            }
            else if (!checkIpAddr(lanIPEndElement, false))
            {
                lanIPEndElement.focus();
                alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
                return false;
            }
        }
		else
            isCheckSameSubnet = false;
        
        // 3. Check IP range in the subnet
        if (isCheckSameSubnet && !checkSameSubnet(lanIPStartElement.value, currentLanIP, currentLanMask))
        {
            lanIPStartElement.focus();
            alert("<!--#tr id="ip.not.in.lan.error" -->IP address does not in LAN subnet.<!--#endtr -->");
            return false;
        }
        else if (isCheckSameSubnet && !checkSameSubnet(lanIPEndElement.value, currentLanIP, currentLanMask))
        {
            lanIPEndElement.focus();
            alert("<!--#tr id="ip.not.in.lan.error" -->IP address does not in LAN subnet.<!--#endtr -->");
            return false;
        }

		// 4. Check the relation between Start IP and End IP.
		if (!checkIPStartEnd(lanIPStartElement.value, lanIPEndElement.value)) 
		{
			lanIPStartElement.focus();
			alert("<!--#tr id="access.alert.2" -->Start IP should smaller than End IP!<!--#endtr -->");
			return false;
		}
	}

    //MAC Filters
	var TOTALMAC = document.getElementById("parental_maclist").value;
	document.getElementById("filter_macmode").value = document.getElementById("parental_macmode").value;
	document.getElementById("wl_macmode").value = document.getElementById("parental_macmode").value;
    for (var i = 0; i < TOTALMAC; i++)
    {
        var macAddressElement = document.getElementById("parentalmacFilter" + i);
        if (!isBlankString(macAddressElement.value) && !checkMac(macAddressElement.value)) 
        {
            macAddressElement.focus();
            alert("<!--#tr id="mac.address.error"-->Invalid MAC address! Please enter a valid MAC address.<!--#endtr-->");
            return false;
        }
		if(document.getElementById("parental_macif" + i).value == "both") {
			document.getElementById("macFilter" + i).value = macAddressElement.value;
			document.getElementById("macAddressInput" + i).value = macAddressElement.value;
		} else if (document.getElementById("parental_macif" + i).value == "lan") {
			document.getElementById("macFilter" + i).value = macAddressElement.value;
			document.getElementById("macAddressInput" + i).value = "";
		} else if (document.getElementById("parental_macif" + i).value == "wlan") {
			document.getElementById("macFilter" + i).value = "";
			document.getElementById("macAddressInput" + i).value = macAddressElement.value;
		}
    }
    
	//alert("System is rebooting...");
	totalWaitTime = 25;
	wait_page();
	document.getElementById("waitPad").style.display="block";
	scroll(0,0);
	return true;
}

function page_load() {
}
//-->
</script>
<!-- InstanceEndEditable -->
</head>
<body onload="template_load();">
<div id="waitPad" style="display: none;" ></div>
<div class="wrapper"> 
<table width="100%" border="0"  cellpadding="0" cellspacing="0" >
	<tr>
		<td class="header">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td class="header_1">
						<table border="0" cellpadding="0" cellspacing="0"  style="position:relative;width:920px; top:8px;" class="maintable">
							<tr>
								<td  valign="top"><img src="../images/logo.png" ></td>
								<td align="right"  valign="middle" nowrap="nowrap" class="description" style="width:600px; line-height:1.5em">
									<!--#tr id="project.desc"-->AC1750 Dual Band Wireless Router<!--#endtr-->
									<br>
              						TEW-812DRU
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
<div class="dialog" style="margin-left:auto; margin-right:auto">
<div style="background-color: transparent;background-attachment: scroll;background-image: url(../images/bg_main2.png); background-position: right top; height: 40px;"><div></div></div>
<div style="background-color: transparent;background-repeat: repeat-y;background-attachment: scroll;background-image: url(../images/bg_main2_overlay.png);  background-position: right top;">
<div class="t"></div>
			<!--START MAIN TABLE -->
			<table border="0" cellpadding="0" cellspacing="0"  style="width:940px;">
				<tr>
					<td valign="top">
						<!--START LEFT NAVIGATION -->
<script>
ddaccordion.init({ //top level headers initialization
	headerclass: "expandable", //Shared CSS class name of headers group that are expandable
	contentclass: "categoryitems", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content
	onemustopen: true, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: true, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "openheader"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["src", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: 200, //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
	}
})

ddaccordion.init({ //top level headers initialization
	headerclass: "expandable2", //Shared CSS class name of headers group that are expandable
	contentclass: "categoryitems", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc]. [] denotes no content
	onemustopen: true, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "openheader"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["src", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: 200, //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
	}
})

jQuery(function(){
     $(".img-swap").hover(
          function(){this.src = this.src.replace("_0","_2");},
          function(){this.src = this.src.replace("_2","_0");
     });
});
</script>

<!-- InstanceParam name="img_folder" type="text" value="../images/" -->

<div class="arrowlistmenu" style="padding-top: 0px">
	<div class="homenav" style="margin-bottom:20px">
		<a href="home.asp?expandable=0"><img src="../images/but_basic_1<!--#tr id="image.lang.png"-->.png<!--#endtr-->" style="float:left" border="0" /></a><a href="../adm/status.asp?expandable2=0"><img src="../images/but_advance_0<!--#tr id="image.lang.png"-->.png<!--#endtr-->" class="img-swap" border="0" /></a>
	</div>
	<div class="borderbottom"> </div>

	<div class="menuheader expandable" onclick="location.href='../basic/home.asp'" >
		<img class="CatImage" src="../images/but_network_status_0.png" /><span class="CatTitle" id="mainmenu_1"><!--#tr id="basic.menu.networkstatus"-->Network Status<!--#endtr--></span>
	</div> 
	<ul class="categoryitems" >
		<li style="display:none;"></li>
	</ul>

	<div class="menuheader expandable" onclick="location.href='../basic/wireless.asp?wl_unit=0'">
		<img class="CatImage" src="../images/but_wireless_0.png" /><span class="CatTitle" id="mainmenu_2"><!--#tr id="basic.menu.wireless"-->Wireless<!--#endtr--></span>
	</div> 
	<ul class="categoryitems" >
		<li style="display:none;"></li>
	</ul>

	<div class="menuheader expandable" onclick="location.href='../basic/guestnetwork.asp?wl_unit=0.3'">
		<img class="CatImage" src="../images/but_guest_network_0.png" /><span class="CatTitle" id="mainmenu_3"><!--#tr id="basic.menu.guestnetwork"-->Guest Network<!--#endtr--></span>
	</div>
	<ul class="categoryitems" >
		<li style="display:none;"></li>
	</ul>

	<div class="menuheader expandable" onclick="location.href='../basic/parental.asp'">
		<img class="CatImage" src="../images/but_parental_control_0.png" /><span class="CatTitle" id="mainmenu_4"><!--#tr id="basic.menu.parental"-->Parental Control<!--#endtr--></span>
	</div>
	<ul class="categoryitems" >
		<li style="display:none;"></li>
	</ul>
</div>
						<!--END LEFT NAVIGATION --> 
<script type="text/javascript" src="../scripts/xpmenu.js"></script>
					</td>
					<td style="width:670px; padding: 10px 0px 0px 15px; " valign="top" class="txt_main">
<iframe class="rebootRedirect" name="rebootRedirect" id="rebootRedirect" frameborder="0" width="1" height="1" scrolling="no" src="" style="display:none">redirect</iframe>
<div id="waitform"></div>
<div id="mainform">
	<div id="main_content">
	<!-- InstanceBeginEditable name="Main Content" -->
<table class="body"><tr><td>
<h1><!--#tr id="basic.menu.parental"-->Parental Control<!--#endtr--></h1>
<div class="hr" ></div>
<p>
<!--#tr id="basic.menu.parental"-->Parental Control<!--#endtr-->
</p>

<form method="post" action="/uapply.cgi" onSubmit="return applyCheck();">
<input type="hidden" name="page" value="/basic/parental.asp">
<input type="hidden" name="token" value="<% genToken(); %>">
<input type="hidden" id="currentLanIP" value="<% nvram_get("lan_ipaddr"); %>" >
<input type="hidden" id="currentLanMask" value="<% nvram_get("lan_netmask"); %>" >

<table width="100%" class="tbl_main">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="basic.parental.urlfilter"-->Web URL Filter<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL"><!--#tr id="basic.parental.urlfilter.mode"-->Web URL Filter Mode<!--#endtr--></td>
		<td class="CR">
			<select id="filter_url_enable" name="filter_url_enable">
				<option value="0" <% nvram_match("filter_url_enable", "0", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
				<option value="1" <% nvram_match("filter_url_enable", "1", "selected"); %>><!--#tr id="enabled"-->Enabled<!--#endtr--></option>
			</select>
			<input type="hidden" name="filter_url" id="filter_url" value="24">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<table width="100%" class="tbl_main2">
				<tr>
					<td class="form_list_title" width="70%" colspan="3" style="display:none"><!--#tr id="basic.parental.iprange"-->IP Address Range<!--#endtr--></td>
					<td class="form_list_title" width="70%"><!--#tr id="url"-->URL<!--#endtr--></td>
					<td class="form_list_title"><!--#tr id="schedule"-->Schedule<!--#endtr--></td>
					<td class="form_list_title"><!--#tr id="enabled"-->Enabled<!--#endtr--></td>
				</tr>
				<% filter_url(0, 23); %>
			</table>
		</td>
	</tr>
</table>

<table width="100%" class="tbl_main">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="basic.parental.ipfilter"-->IP Filter Rules<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL"><!--#tr id="basic.parental.ipfilter.mode"-->IP Filter Mode<!--#endtr--></td>
		<td class="CR">
			<select id="filter_ip_enable" name="filter_ip_enable">
				<option value="0" <% nvram_match("filter_ip_enable", "0", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
				<option value="1" <% nvram_match("filter_ip_enable", "1", "selected"); %>><!--#tr id="enabled"-->Enabled<!--#endtr--></option>
			</select>
			<input type="hidden" name="filter_ip" id="filter_ip" value="24">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<table width="100%" class="tbl_main2">
				<tr>
					<td class="form_list_title" width="70%" colspan="3"><!--#tr id="basic.parental.iprange"-->IP Address Range<!--#endtr--></td>
					<td class="form_list_title"><!--#tr id="schedule"-->Schedule<!--#endtr--></td>
					<td class="form_list_title"><!--#tr id="enabled"-->Enabled<!--#endtr--></td>
				</tr>
				<% filter_ip(0, 23); %>
			</table>
		</td>
	</tr>
</table>

<table width="100%" class="tbl_main">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="basic.parental.macfilter"-->MAC Filters<!--#endtr--></td>
	</tr>

  <tr>
    <td class="CL"
	onMouseOver="return overlib('Selects whether clients with the specified MAC address are allowed or denied access to the router and the WAN.', LEFT);"
	onMouseOut="return nd();">
	<!--#tr id="basic.parental.macfilter.mode"-->MAC Filter Mode<!--#endtr-->
    </td>
    <td class="CR">
	<select name="parental_macmode" id="parental_macmode">
	  <option value="disabled" <% nvram_match("filter_macmode", "disabled", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
	  <option value="allow" <% nvram_match("filter_macmode", "allow", "selected"); %>><!--#tr id="allow"-->Allow<!--#endtr--></option>
	  <option value="deny" <% nvram_match("filter_macmode", "deny", "selected"); %>><!--#tr id="deny"-->Deny<!--#endtr--></option>
	</select>
	<input type="hidden" name="parental_maclist" id="parental_maclist" value="24">
	<input type="hidden" name="parental_macif" id="parental_macif" value="24">
    </td>
  </tr>
	<tr>
		<td colspan="2">
			<table width="100%" class="tbl_main2">
				<tr>
					<td class="form_list_title" width="70%"><!--#tr id="basic.parental.macfilter"-->MAC Filters<!--#endtr--></td>
					<td class="form_list_title" style="display:none;"><!--#tr id="basic.parental.interface"-->Interface<!--#endtr--></td>
				</tr>
<script>
				var parental_maclist = new Array(
					"<% nvram_list("parental_maclist",  0); %>",
					"<% nvram_list("parental_maclist",  1); %>",
					"<% nvram_list("parental_maclist",  2); %>",
					"<% nvram_list("parental_maclist",  3); %>",
					"<% nvram_list("parental_maclist",  4); %>",
					"<% nvram_list("parental_maclist",  5); %>",
					"<% nvram_list("parental_maclist",  6); %>",
					"<% nvram_list("parental_maclist",  7); %>",
					"<% nvram_list("parental_maclist",  8); %>",
					"<% nvram_list("parental_maclist",  9); %>",
					"<% nvram_list("parental_maclist", 10); %>",
					"<% nvram_list("parental_maclist", 11); %>",
					"<% nvram_list("parental_maclist", 12); %>",
					"<% nvram_list("parental_maclist", 13); %>",
					"<% nvram_list("parental_maclist", 14); %>",
					"<% nvram_list("parental_maclist", 15); %>",
					"<% nvram_list("parental_maclist", 16); %>",
					"<% nvram_list("parental_maclist", 17); %>",
					"<% nvram_list("parental_maclist", 18); %>",
					"<% nvram_list("parental_maclist", 19); %>",
					"<% nvram_list("parental_maclist", 20); %>",
					"<% nvram_list("parental_maclist", 21); %>",
					"<% nvram_list("parental_maclist", 22); %>",
					"<% nvram_list("parental_maclist", 23); %>");
				var parental_macif_lan = new Array(
					"<% nvram_indexmatch("parental_macif",  0, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  1, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  2, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  3, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  4, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  5, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  6, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  7, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  8, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  9, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 10, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 11, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 12, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 13, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 14, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 15, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 16, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 17, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 18, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 19, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 20, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 21, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 22, "lan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 23, "lan", "selected"); %>");
				var parental_macif_wlan = new Array(
					"<% nvram_indexmatch("parental_macif",  0, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  1, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  2, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  3, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  4, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  5, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  6, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  7, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  8, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  9, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 10, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 11, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 12, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 13, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 14, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 15, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 16, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 17, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 18, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 19, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 20, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 21, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 22, "wlan", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 23, "wlan", "selected"); %>");
				var parental_macif_both = new Array(
					"<% nvram_indexmatch("parental_macif",  0, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  1, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  2, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  3, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  4, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  5, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  6, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  7, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  8, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif",  9, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 10, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 11, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 12, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 13, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 14, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 15, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 16, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 17, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 18, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 19, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 20, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 21, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 22, "both", "selected"); %>",
					"<% nvram_indexmatch("parental_macif", 23, "both", "selected"); %>");
				
				var macloop=0;
				for(macloop=0;macloop<=23;macloop++) {
					document.write("<tr>");
					document.write("<td class=\"form_list_content\"><input id=\"parentalmacFilter"+macloop+"\" name=\"parental_maclist"+macloop+"\" value=\""+parental_maclist[macloop]+"\" size=\"17\" maxlength=\"17\"></td>");
					document.write("<td class=\"form_list_content\" style=\"display:none;\">");
					document.write("<select name=\"parental_macif"+macloop+"\" id=\"parental_macif"+macloop+"\" style=\"width:70px;\">");
/* Tom.Hung 2013-10-18, force set to lan by customer request
					document.write("<option value=\"lan\" "+parental_macif_lan[macloop]+"><!--#tr id="basic.parental.interface.lan"-->LAN<!--#endtr--></option>");
					document.write("<option value=\"wlan\" "+parental_macif_wlan[macloop]+"><!--#tr id="basic.parental.interface.wlan"-->WLAN<!--#endtr--></option>");
					document.write("<option value=\"both\" "+parental_macif_both[macloop]+"><!--#tr id="basic.parental.interface.both"-->Both<!--#endtr--></option>");
*/
					document.write("<option value=\"lan\" selected><!--#tr id="basic.parental.interface.lan"-->LAN<!--#endtr--></option>");
					document.write("</select>");
					document.write("</td>");
					document.write("</tr>");
				}
</script>
			</table>
		</td>
	</tr>
</table>

<table width="100%" class="tbl_main" style="display:none">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="filter.lan.mac.filter"-->LAN MAC Filters<!--#endtr--></td>
	</tr>

  <tr>
    <td class="CL"
	onMouseOver="return overlib('Selects whether clients with the specified MAC address are allowed or denied access to the router and the WAN.', LEFT);"
	onMouseOut="return nd();">
	<!--#tr id="filter.lan.mac.filter.mode"-->LAN MAC Filter Mode<!--#endtr-->
    </td>
    <td class="CR">
	<select name="filter_macmode" id="filter_macmode">
	  <option value="disabled" <% nvram_match("filter_macmode", "disabled", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
	  <option value="allow" <% nvram_match("filter_macmode", "allow", "selected"); %>><!--#tr id="allow"-->Allow<!--#endtr--></option>
	  <option value="deny" <% nvram_match("filter_macmode", "deny", "selected"); %>><!--#tr id="deny"-->Deny<!--#endtr--></option>
	</select>
    </td>
  </tr>
  <tr>
    <td class="CL" valign="top" rowspan="16"
	onMouseOver="return overlib('Filter packets from LAN machines with the specified MAC addresses. The MAC address format is XX:XX:XX:XX:XX:XX.', LEFT);"
	onMouseOut="return nd();">
	<input type="hidden" name="filter_maclist" value="24">
	<!--#tr id="filter.lan.mac.filter"-->LAN MAC Filters<!--#endtr-->
    </td>
		<td class="CR">
			<table width="100%" class="tbl_main2" style="border-collapse: separate;">
				<tr>
					<td><input id="macFilter0" name="filter_maclist0" value="<% nvram_list("filter_maclist", 0); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter1" name="filter_maclist1" value="<% nvram_list("filter_maclist", 1); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter2" name="filter_maclist2" value="<% nvram_list("filter_maclist", 2); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter3" name="filter_maclist3" value="<% nvram_list("filter_maclist", 3); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter4" name="filter_maclist4" value="<% nvram_list("filter_maclist", 4); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter5" name="filter_maclist5" value="<% nvram_list("filter_maclist", 5); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter6" name="filter_maclist6" value="<% nvram_list("filter_maclist", 6); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter7" name="filter_maclist7" value="<% nvram_list("filter_maclist", 7); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter8" name="filter_maclist8" value="<% nvram_list("filter_maclist", 8); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter9" name="filter_maclist9" value="<% nvram_list("filter_maclist", 9); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter10" name="filter_maclist10" value="<% nvram_list("filter_maclist", 10); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter11" name="filter_maclist11" value="<% nvram_list("filter_maclist", 11); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter12" name="filter_maclist12" value="<% nvram_list("filter_maclist", 12); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter13" name="filter_maclist13" value="<% nvram_list("filter_maclist", 13); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter14" name="filter_maclist14" value="<% nvram_list("filter_maclist", 14); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter15" name="filter_maclist15" value="<% nvram_list("filter_maclist", 15); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter16" name="filter_maclist16" value="<% nvram_list("filter_maclist", 16); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter17" name="filter_maclist17" value="<% nvram_list("filter_maclist", 17); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter18" name="filter_maclist18" value="<% nvram_list("filter_maclist", 18); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter19" name="filter_maclist19" value="<% nvram_list("filter_maclist", 19); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter20" name="filter_maclist20" value="<% nvram_list("filter_maclist", 20); %>" size="17" maxlength="17"></td>
				</tr>
				<tr>
					<td><input id="macFilter21" name="filter_maclist21" value="<% nvram_list("filter_maclist", 21); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter22" name="filter_maclist22" value="<% nvram_list("filter_maclist", 22); %>" size="17" maxlength="17"></td>
					<td><input id="macFilter23" name="filter_maclist23" value="<% nvram_list("filter_maclist", 23); %>" size="17" maxlength="17"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table width="100%" class="tbl_main" style="display:none">
	<tr>
		<td class="CT" colspan="4"><!--#tr id="security.44"-->Wireless MAC Filter<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('Selects whether clients with the specified MAC address are allowed or denied wireless access.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="security.41"-->Filter Mode<!--#endtr-->
		</td>
		<td class="CR" colspan="3">
			<select name="wl_macmode" id="wl_macmode">
				<option value="disabled" <% nvram_match("wl_macmode", "disabled", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
				<option value="allow" <% nvram_match("wl_macmode", "allow", "selected"); %>><!--#tr id="allow"-->Allow<!--#endtr--></option>
				<option value="deny" <% nvram_match("wl_macmode", "deny", "selected"); %>><!--#tr id="deny"-->Deny<!--#endtr--></option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="CL" valign="top" rowspan="16"
		onMouseOver="return overlib('Allows or denies wireless access to clients with the specified MAC addresses. The MAC address format is XX:XX:XX:XX:XX:XX.', LEFT);"
		onMouseOut="return nd();">
		<input type="hidden" name="wl_maclist" value="24">
		<!--#tr id="mac.address"-->MAC Address<!--#endtr-->
		</td>
		<td class="CR2"><input id="macAddressInput0" name="wl_maclist0" value="<% nvram_list("wl_maclist", 0); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput1" name="wl_maclist1" value="<% nvram_list("wl_maclist", 1); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput2" name="wl_maclist2" value="<% nvram_list("wl_maclist", 2); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput3" name="wl_maclist3" value="<% nvram_list("wl_maclist", 3); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput4" name="wl_maclist4" value="<% nvram_list("wl_maclist", 4); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput5" name="wl_maclist5" value="<% nvram_list("wl_maclist", 5); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput6" name="wl_maclist6" value="<% nvram_list("wl_maclist", 6); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput7" name="wl_maclist7" value="<% nvram_list("wl_maclist", 7); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput8" name="wl_maclist8" value="<% nvram_list("wl_maclist", 8); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput9" name="wl_maclist9" value="<% nvram_list("wl_maclist", 9); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput10" name="wl_maclist10" value="<% nvram_list("wl_maclist", 10); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput11" name="wl_maclist11" value="<% nvram_list("wl_maclist", 11); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput12" name="wl_maclist12" value="<% nvram_list("wl_maclist", 12); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput13" name="wl_maclist13" value="<% nvram_list("wl_maclist", 13); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput14" name="wl_maclist14" value="<% nvram_list("wl_maclist", 14); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput15" name="wl_maclist15" value="<% nvram_list("wl_maclist", 15); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput16" name="wl_maclist16" value="<% nvram_list("wl_maclist", 16); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput17" name="wl_maclist17" value="<% nvram_list("wl_maclist", 17); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput18" name="wl_maclist18" value="<% nvram_list("wl_maclist", 18); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput19" name="wl_maclist19" value="<% nvram_list("wl_maclist", 19); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput20" name="wl_maclist20" value="<% nvram_list("wl_maclist", 20); %>" size="17" maxlength="17"></td>
	</tr>
	<tr>
		<td class="CR2"><input id="macAddressInput21" name="wl_maclist21" value="<% nvram_list("wl_maclist", 21); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput22" name="wl_maclist22" value="<% nvram_list("wl_maclist", 22); %>" size="17" maxlength="17"></td>
		<td class="CR2"><input id="macAddressInput23" name="wl_maclist23" value="<% nvram_list("wl_maclist", 23); %>" size="17" maxlength="17"></td>
	</tr>
</table>

<table width="100%" class="tbl_main">
    <tr align="center">
      <td>
		  <input type="submit" class="<!--#tr id="buttonWidth"-->button1<!--#endtr-->" name="action" value="<!--#tr id="apply"-->Apply<!--#endtr-->">
		  <input type="reset" class="button1" name="action" value="<!--#tr id="cancel"-->Cancel<!--#endtr-->">
      </td>
    </tr>
</table>
</form>

</td></tr></table>
	<!-- InstanceEndEditable -->
	</div>
</div>
					</td>
				</tr>
			</table>
    		<!--END MAIN TABLE -->
</div>
<div style="background-color: transparent;background-attachment: scroll;background-image: url(../images/bg_main2.png); background-position: right bottom; height: 50px;"><div></div></div>
</div>
		</td>
	</tr>
</table>
</div>

<div class="footer" >
<table border="0" cellpadding="0" cellspacing="0"  style="position:static; width:940px; margin:20px auto 0px auto ">
    <tr>
		<td>
			<form method="post" name="Lang" action="/goform/setSysLang">
			<table border="0" cellpadding="2" cellspacing="2" summary="" align="center" style="display:none">
				<tr><td>
					<input type="hidden" name="token" value="<% genToken(); %>">
					<select name="langSelection" id="langSelection" onchange="doLangSet();">
					<option value="EN" selected="selected">English</option>
					<option value="DE">Deutsch</option>
					<option value="FR">French</option>
					<option value="ESP">Espanol</option>
					<option value="RU">Russian</option>
					</select>
					<input type="hidden" id="redirect_url" name="redirect_url" value="/" />
				</td></tr>
			</table>
			</form>
		</td>
		<td class="txt_footer">
			<!--#tr id="bottom.copyright"-->Copyright &copy; 2014 TRENDnet. All Rights Reserved.<!--#endtr-->
		</td>
		<td align="right" class="txt_footer">
			<a href="http://www.trendnet.com/register" target="_blank" class="register"><img src="../images/icons_warranty_1.png" style="position:absolute;  margin:-5px 0 0 -35px" border="0"><!--#tr id="bottom.product.registration"-->Product Warranty Registration<!--#endtr--></a>&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>
</div>
</body>
<!-- InstanceEnd --></html>
