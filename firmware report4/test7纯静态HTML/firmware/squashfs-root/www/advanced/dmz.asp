<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><!-- InstanceBegin template="/Templates/advanced.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>

<title>TRENDnet | TEW-812DRU | <!--#tr id="project.desc"-->AC1750 Dual Band Wireless Router<!--#endtr--></title>
<!-- InstanceBeginEditable name="Page Title" -->

<!-- InstanceEndEditable -->

<link href="../style/frame.css" rel="stylesheet" type="text/css" media="screen" />
<link href="../style/style.css" rel="stylesheet" type="text/css" media="screen" />
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
	if(path.indexOf("/adm/") > -1)
		ddaccordion.expandone('expandable2', 0);
	if(path.indexOf("/internet/") > -1)
		ddaccordion.expandone('expandable2', 1);
	if((path.indexOf("/wireless/") > -1 || path.indexOf("/wps/") > -1) && "<% nvram_invmatch("wl_unit_if", "1", "0"); %>" == "0")
		ddaccordion.expandone('expandable2', 2);
	if((path.indexOf("/wireless/") > -1 || path.indexOf("/wps/") > -1) && "<% nvram_invmatch("wl_unit_if", "0", "1"); %>" == "1")
		ddaccordion.expandone('expandable2', 3);
	if(path.indexOf("/advanced/") > -1) {
		if(path.indexOf("access_control.asp") > -1 || path.indexOf("filter.asp") > -1)
			ddaccordion.expandone('expandable2', 4);
		else
			ddaccordion.expandone('expandable2', 5);
	}
	if(path.indexOf("/usb/") > -1)
		ddaccordion.expandone('expandable2', 6);
}

function menu_adjust() {
	if (lang=="DE") {
	} else	if (lang=="FR") {
	} else	if (lang=="ESP") {
	} else	if (lang=="RU") {
		document.getElementById("mainmenu_3").style.margin = "-12px 0px 0px 5px";
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
function updateState() {
	if (document.dmz.dmz_enable.options.selectedIndex == 1) {
		document.getElementById("dmz_ip_tr").style.visibility = "visible";
		document.getElementById("dmz_ip_tr").style.display = style_display_on_tr();
	}
	else {
		document.getElementById("dmz_ip_tr").style.visibility = "hidden";
		document.getElementById("dmz_ip_tr").style.display = "none";
	}
}

function applyCheck()
{
    var dmzIPAddressElement = document.getElementById("dmzIPAddress");
    if (document.getElementById("dmz_enable").selectedIndex == 1 && 
        !checkIpAddr(dmzIPAddressElement, false)) {
        dmzIPAddressElement.focus();
        alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
        return false;
    }

    // Check if IP is in LAN range
    if (document.getElementById("dmz_enable").selectedIndex == 1 &&
        !checkSameSubnet(dmzIPAddressElement.value, "<% nvram_get("lan_ipaddr"); %>", "<% nvram_get("lan_netmask"); %>")) {
        dmzIPAddressElement.focus();
        alert("<!--#tr id="ip.not.in.lan.error"-->IP address does not in LAN subnet.<!--#endtr-->");
        return false;
    }

	totalWaitTime = 25;
	wait_page();
	document.getElementById("waitPad").style.display="block";
	scroll(0,0);
	return true;
}

function page_load() {
	updateState();
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
		<a href="../basic/home.asp?expandable=0"><img src="../images/but_basic_0<!--#tr id="image.lang.png"-->.png<!--#endtr-->" style="float:left" class="img-swap" border="0" /></a><a href="../adm/status.asp?expandable2=0"><img src="../images/but_advance_1<!--#tr id="image.lang.png"-->.png<!--#endtr-->" border="0" /></a>
	</div>
	<div class="borderbottom"> </div>

	<div class="menuheader expandable2" onclick="location.href='../adm/status.asp'"> <img class="CatImage" src="../images/but_administrator_0.png"><span class="CatTitle" id="mainmenu_1"><!--#tr id="administrator"-->Administrator<!--#endtr--></span></div> 
	<ul class="categoryitems">
		<li><a onclick="location.href='../adm/management.asp'"><!--#tr id="adm.node.management"-->Management<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/upload_firmware.asp'"><!--#tr id="adm.node.upload"-->Upload Firmware<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/settings.asp'"><!--#tr id="adm.node.settings"-->Settings Management<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/time.asp'"><!--#tr id="adm.node.time"-->Time<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/schedule.asp'"><!--#tr id="adv.node.schedule"-->Schedule<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/status.asp'"><!--#tr id="adm.node.routerstatus"-->Router Status<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/ipv6status.asp'"><!--#tr id="adm.node.ipv6.status"-->IPv6 Status<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/syslog.asp'"><!--#tr id="adm.node.system.log"-->System Log<!--#endtr--></a></li>
		<li><a onclick="location.href='../adm/network.asp'"><!--#tr id="adv.node.network"-->Advanced Network<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../internet/lan.asp'"><img class="CatImage" src="../images/but_setup_0.png"><span class="CatTitle" id="mainmenu_2"><!--#tr id="setup"-->Setup<!--#endtr--></span></div>
	<ul class="categoryitems">
		<li><a onclick="location.href='../internet/lan.asp'"><!--#tr id="net.node.lan"-->LAN Setting<!--#endtr--></a></li>
		<li><a onclick="location.href='../internet/wan.asp'"><!--#tr id="net.node.wan"-->WAN Setting<!--#endtr--></a></li>
		<li><a onclick="location.href='../internet/routing.asp'"><!--#tr id="adv.node.routing"-->Routing<!--#endtr--></a></li>
		<li><a onclick="location.href='../internet/ipv6.asp'"><!--#tr id="net.node.ipv6"-->IPv6 Setting<!--#endtr--></a></li>
		<li><a onclick="location.href='../internet/qos.asp'"><!--#tr id="net.node.qos"-->QoS<!--#endtr--></a></li>
		<li><a onclick="location.href='../wizard/wizard_internet.asp'"><!--#tr id="wizard.node"-->Wizard<!--#endtr--></a></li>
		<li><a onclick="location.href='../internet/vlan.asp'"><!--#tr id="net.node.vlan"-->VLAN Setting<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../wireless/multissid.asp?wl_unit=0.1'"> <img class="CatImage" src="../images/but_wireless_24_0<!--#tr id="image.lang.png"-->.png<!--#endtr-->"><span class="CatTitle" id="mainmenu_3"><!--#tr id="wireless.24g"-->Wireless 2.4GHz<!--#endtr--></span></div> 
	<ul class="categoryitems">
		<li><a onclick="location.href='../wireless/multissid.asp?wl_unit=0.1'"><!--#tr id="wireless.node.multissid"-->Multiple SSID<!--#endtr--></a></li>
		<li><a onclick="location.href='../wireless/wds.asp?wl_unit=0'"><!--#tr id="wireless.node.wds"-->WDS<!--#endtr--></a></li>
		<li><a onclick="location.href='../wireless/advanced.asp?wl_unit=0'"><!--#tr id="wireless.node.adv"-->Advanced<!--#endtr--></a></li>
		<li><a onclick="location.href='../wps/wps.asp?wl_unit=0'"><!--#tr id="wireless.node.wps"-->WPS<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../wireless/multissid.asp?wl_unit=1.1'"> <img class="CatImage" src="../images/but_wireless_5_0<!--#tr id="image.lang.png"-->.png<!--#endtr-->"><span class="CatTitle" id="mainmenu_4"><!--#tr id="wireless.5g"-->Wireless 5GHz<!--#endtr--></span></div> 
	<ul class="categoryitems">
		<li><a onclick="location.href='../wireless/multissid.asp?wl_unit=1.1'"><!--#tr id="wireless.node.multissid"-->Multiple SSID<!--#endtr--></a></li>
		<li><a onclick="location.href='../wireless/wds.asp?wl_unit=1'"><!--#tr id="wireless.node.wds"-->WDS<!--#endtr--></a></li>
		<li><a onclick="location.href='../wireless/advanced.asp?wl_unit=1'"><!--#tr id="wireless.node.adv"-->Advanced<!--#endtr--></a></li>
		<li><a onclick="location.href='../wps/wps.asp?wl_unit=1'"><!--#tr id="wireless.node.wps"-->WPS<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../advanced/access_control.asp'"> <img class="CatImage" src="../images/but_security_0.png"><span class="CatTitle" id="mainmenu_5"><!--#tr id="security"-->Security<!--#endtr--></span></div> 
	<ul class="categoryitems">
		<li><a onclick="location.href='../advanced/access_control.asp'"><!--#tr id="adv.node.ac"-->Access Control<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../advanced/dmz.asp'"> <img class="CatImage" src="../images/but_firewall_0.png"><span class="CatTitle" id="mainmenu_6"><!--#tr id="firewall"-->Firewall<!--#endtr--></span></div>
	<ul class="categoryitems">
		<li><a onclick="location.href='../advanced/dmz.asp'"><!--#tr id="adv.node.dmz"-->DMZ<!--#endtr--></a></li>
		<li><a onclick="location.href='../advanced/single_port.asp'"><!--#tr id="adv.node.virtual.rules"-->Virtual Server Rules<!--#endtr--></a></li>
		<li><a onclick="location.href='../advanced/port_trigger.asp'"><!--#tr id="adv.node.special.app"-->Special Applications<!--#endtr--></a></li>
		<li><a onclick="location.href='../advanced/port_range.asp'"><!--#tr id="adv.node.gaming"-->Gaming<!--#endtr--></a></li>
		<li><a onclick="location.href='../advanced/alg.asp'"><!--#tr id="adv.node.alg"-->ALG<!--#endtr--></a></li>
	</ul>

	<div class="menuheader expandable2" onclick="location.href='../usb/samba.asp'"> <img class="CatImage" src="../images/but_usb_0.png"><span class="CatTitle" id="mainmenu_7"><!--#tr id="usb"-->USB<!--#endtr--></span></div> 
	<ul class="categoryitems">
		<li><a onclick="location.href='../usb/samba.asp'"><!--#tr id="usb.node.samba"-->Samba Server<!--#endtr--></a></li>
		<li><a onclick="location.href='../usb/ftp.asp'"><!--#tr id="usb.node.ftp"-->FTP Server<!--#endtr--></a></li>
		<li><a onclick="location.href='../usb/ejectdevice.asp'"><!--#tr id="usb.node.eject.device"-->Eject Device<!--#endtr--></a></li>
	</ul>
</div>
						<!--END LEFT NAVIGATION --> 
<script type="text/javascript" src="../scripts/xpmenu.js"></script>
					</td>
					<td style="width:650px; padding: 10px 0px 0px 15px; " valign="top" class="txt_main">
<iframe class="rebootRedirect" name="rebootRedirect" id="rebootRedirect" frameborder="0" width="1" height="1" scrolling="no" src="" style="display:none">redirect</iframe>
<div id="waitform"></div>
<div id="mainform">
	<div id="main_content">
	<!-- InstanceBeginEditable name="Main Content" -->
<table class="body"><tr><td>
<h1><!--#tr id="dmz.title"-->DMZ Settings<!--#endtr--></h1>
<div class="hr" ></div>
<p>
<!--#tr id="dmz.desc"-->You can setup a De-militarized Zone(DMZ) to separate internal network and Internet.<!--#endtr-->
</p>

<form method="post" name="dmz" action="/uapply.cgi" onSubmit="return applyCheck();">
<input type="hidden" name="page" value="/advanced/dmz.asp">
<input type="hidden" name="token" value="<% genToken(); %>">

<table width="100%" class="tbl_main">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="dmz.title"-->DMZ Settings<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('Set DMZ server status.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="dmz.title"-->DMZ Settings<!--#endtr-->
		</td>
		<td class="CR">
		  <select id="dmz_enable" name="dmz_enable" onChange="updateState()">
			<option value="0" <% nvram_match("dmz_enable", "0", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
			<option value="1" <% nvram_match("dmz_enable", "1", "selected"); %>><!--#tr id="enabled"-->Enabled<!--#endtr--></option>
		  </select>
		</td>
	</tr>
	<tr id="dmz_ip_tr">
		<td class="CL"
		onMouseOver="return overlib('Set DMZ IP address.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="dmz.1"-->DMZ IP Address<!--#endtr-->
		</td>
		<td class="CR"><input id="dmzIPAddress" name="dmz_ipaddr" value="<% nvram_get("dmz_ipaddr"); %>" size="15" maxlength="15"></td>
	</tr>
</table>

<table width="100%" class="tbl_main">
	<tr align="center">
		<td>
			<input type="submit" class="button1" name="action" value="<!--#tr id="apply"-->Apply<!--#endtr-->">
			<input type="reset" class="button1" name="action" value="<!--#tr id="cancel"-->Cancel<!--#endtr-->" onClick="updateState()">
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
