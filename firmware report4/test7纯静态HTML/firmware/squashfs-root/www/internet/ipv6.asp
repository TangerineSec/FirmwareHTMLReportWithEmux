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
/*
#ifdef BCMVISTAROUTER
*/ 
var ipv6hint6to4 = "Sets the 6to4 subnet ID(0-65535)";
function ipv6_change(idx)
{
	var router_disable = "<% nvram_match("router_disable", "1", "1"); %>";
	var ipv6mode, v66to4id, v6prefix, v6dns;

	if (idx == 0)	{
		ipv6mode = document.lan.lan_ipv6_mode.value;
		v6prefix = document.lan.lan_ipv6_prefix; 
		v6dns = document.lan.lan_ipv6_dns; 		
		v66to4id = document.lan.lan_ipv6_6to4id; 	
	} else if (idx == 1) {
		ipv6mode = document.lan.lan1_ipv6_mode.value;
		v6prefix = document.lan.lan1_ipv6_prefix; 
		v6dns = document.lan.lan1_ipv6_dns; 		
		v66to4id = document.lan.lan1_ipv6_6to4id; 	
	}
	v6prefix.disabled = 1; 
	v6dns.disabled = 1; 		
	v66to4id.disabled = 1; 	

	if (router_disable == 1)
		ipv6hint6to4 = "Currently IPv6 WAN Prefix is not effective. To Enable, Go to Basic Page and select the Router Mode."

	if (ipv6mode != 0) {
		if (router_disable == 0) {
			if (ipv6mode & 1)
				v66to4id.disabled = 0; 	
			if (ipv6mode & 2)
				v6prefix.disabled = 0;
			v6dns.disabled = 0;
		} 
		else if (ipv6mode & 2)  {
			v6prefix.disabled = 0;  
  		v6dns.disabled = 0; 
		}
	}	
} 
/*
#endif
*/
function lan_update()
{
/*
#ifdef BCMVISTAROUTER
*/ 
	ipv6_change(0);
	ipv6_change(1);
/*
#endif
*/
}

function applyCheck()
{
    // 1. Check WAN Network Prefix
/*
    var wanNetworkPrefixElement = document.getElementById("wanNetworkPrefix");
    if (!isBlankString(wanNetworkPrefixElement.value))
    {
        if (!checkipv6(wanNetworkPrefixElement.value.split("/")[0]))
        {
            wanNetworkPrefixElement.focus();
            alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
            return false;   
        }
    }
*/
    
    // 2. Check LAN Network Prefix
    var lanNetworkPrefixElement = document.getElementById("lanNetworkPrefix");
    var guestLanNetworkPrefixElement = document.getElementById("guestLanNetworkPrefix");
    if (!lanNetworkPrefixElement.disabled && !checkipv6(lanNetworkPrefixElement.value.split("/")[0]))
    {
        lanNetworkPrefixElement.focus();
        alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
        return false;   
    }
    else if (!guestLanNetworkPrefixElement.disabled && !checkipv6(guestLanNetworkPrefixElement.value.split("/")[0]))
    {
        guestLanNetworkPrefixElement.focus();
        alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
        return false;   
    }
    
    
    // 3. Check DNS Server
    var dnsServerElement = document.getElementById("dnsServer");
    var guestDnsServerElement = document.getElementById("guestDnsServer");
    if (dnsServerElement.value == "")
    {
    	// Allow empty DNS server
    }
    else if (!dnsServerElement.disabled && !checkipv6(dnsServerElement.value))
    {
        dnsServerElement.focus();
        alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
        return false;   
    }

    if (guestDnsServerElement.value == "")
    {
    	// Allow empty DNS server
    }
    else if (!guestDnsServerElement.disabled && !checkipv6(guestDnsServerElement.value))
    {
        guestDnsServerElement.focus();
        alert("<!--#tr id="ip.address.error"-->Invalid IP address! Please enter a valid IP address.<!--#endtr-->");
        return false;   
    }
    
    // 4. Check 6to4 subnet ID
    var subnetIDElement = document.getElementById("subnetID");
    var guestSubnetIDElement = document.getElementById("guestSubnetID");
    if (!subnetIDElement.disabled)
    {
        if (!is_number(subnetIDElement.value) || !checkRange(subnetIDElement.value, 0, 65535))
        {
            subnetIDElement.focus();
            alert("<!--#tr id="ipv6.alert.1"-->Please input a correct subnet ID between 0 and 65535<!--#endtr-->");
            return false;       
        }
    }
    
    if (!guestSubnetIDElement.disabled)
    {
        if (!is_number(guestSubnetIDElement.value) || !checkRange(guestSubnetIDElement.value, 0, 65535))
        {
            guestSubnetIDElement.focus();
            alert("<!--#tr id="ipv6.alert.1"-->Please input a correct subnet ID between 0 and 65535<!--#endtr-->");
            return false;       
        }
    }

	totalWaitTime = 25;
	wait_page();
	document.getElementById("waitPad").style.display="block";
	scroll(0,0);
	return true;
}

// do the work of checking the string
function checkipv6(str)
{
	var perlipv6regex = "^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:)))(%.+)?\s*$";
	var aeronipv6regex = "^\s*((?=.*::.*)(::)?([0-9A-F]{1,4}(:(?=[0-9A-F])|(?!\2)(?!\5)(::)|\z)){0,7}|((?=.*::.*)(::)?([0-9A-F]{1,4}(:(?=[0-9A-F])|(?!\7)(?!\10)(::))){0,5}|([0-9A-F]{1,4}:){6})((25[0-5]|(2[0-4]|1[0-9]|[1-9]?)[0-9])(\.(?=.)|\z)){4}|([0-9A-F]{1,4}:){7}[0-9A-F]{1,4})\s*$";
	
	var regex = "/"+perlipv6regex+"/";

	return (/^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:)))(%.+)?\s*$/.test(str));
	
}

function page_load() {
	lan_update();
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
<h1><!--#tr id="ipv6.title"-->IPv6 Settings<!--#endtr--></h1>
<div class="hr" ></div>
<p>
<!--#tr id="ipv6.desc"-->Please contact your Internet Service Provider if they support IPv6.<!--#endtr-->
</p>

<form name="lan" method="post" action="/uapply.cgi" onSubmit="return applyCheck();">
<input type="hidden" name="page" value="/internet/ipv6.asp">
<input type="hidden" name="token" value="<% genToken(); %>">
<!-- These are set by the Javascript functions above --> 
<input type="hidden" name="num_lan_ifaces" value="2">
<input type="hidden" name="lan_ifname" value="<% nvram_get("lan_ifname"); %>" >
<input type="hidden" name="lan1_ifname" value="<% nvram_get("lan1_ifname"); %>" >
<!--
#ifdef BCMVISTAROUTER
-->	
<table width="100%" class="tbl_main" style="display:none">
	<tr>
		<td class="CT" colspan="2"><!--#tr id="ipv6.1"-->WAN IPv6 Setting<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('Sets the IPv6 Network Prefix for WAN.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="ipv6.2"-->WAN Network Prefix<!--#endtr-->
		</td>
		<td class="CR">
			<input id="wanNetworkPrefix" name="wan_ipv6_prefix" value="<% nvram_get("wan_ipv6_prefix"); %>" size="15" maxlength="43">
		</td>
	</tr>
</table>

<table width="100%" class="tbl_main">
	<tr>
		<td class="CT" colspan="3"><!--#tr id="ipv6.3"-->LAN IPv6 Setting<!--#endtr--></td>
	</tr>
	<tr>
		<td class="CL">
		<!--#tr id="lan.12"-->Configured Networks<!--#endtr-->
		</td>
		<td class="CR2"><B><!--#tr id="internal.network"-->Internal Network<!--#endtr--></B></td>
		<td class="CR2"><B><!--#tr id="guest.network"-->Guest Network<!--#endtr--></B></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('IPv6 support.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="ipv6.4"-->Mode<!--#endtr-->
		</td>
		<td class="CR2">
		<select name="lan_ipv6_mode" onChange="ipv6_change(0);" >
		<option value="0" <% nvram_match("lan_ipv6_mode", "0", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
		<option value="1" <% nvram_match("lan_ipv6_mode", "1", "selected"); %>><!--#tr id="ipv6.5"-->6to4<!--#endtr--></option>
		<option value="2" <% nvram_match("lan_ipv6_mode", "2", "selected"); %>><!--#tr id="ipv6.6"-->Native IPv6<!--#endtr--></option>
		</select>
		</td>
		<td class="CR2">
		<select name="lan1_ipv6_mode" onChange="ipv6_change(1);" >
		<option value="0" <% nvram_match("lan1_ipv6_mode", "0", "selected"); %>><!--#tr id="disabled"-->Disabled<!--#endtr--></option>
		<option value="1" <% nvram_match("lan1_ipv6_mode", "1", "selected"); %>><!--#tr id="ipv6.5"-->6to4<!--#endtr--></option>
		<option value="2" <% nvram_match("lan1_ipv6_mode", "2", "selected"); %>><!--#tr id="ipv6.6"-->Native IPv6<!--#endtr--></option>
		</select>
		</td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('Sets the IPv6 Network Prefix for LAN.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="ipv6.8"-->LAN Network Prefix<!--#endtr-->
		</td>
		<td class="CR2"><input id="lanNetworkPrefix" name="lan_ipv6_prefix" value="<% nvram_get("lan_ipv6_prefix"); %>" size="15" maxlength="43"></td>
		<td class="CR2"><input id="guestLanNetworkPrefix" name="lan1_ipv6_prefix" value="<% nvram_get("lan1_ipv6_prefix"); %>" size="15" maxlength="43"></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib('Sets the IP addresses of the DNS servers to use for resolving host names.', LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="ipv6.9"-->DNS Server<!--#endtr-->
		</td>
		<td class="CR2"><input id="dnsServer" name="lan_ipv6_dns" value="<% nvram_get("lan_ipv6_dns"); %>" size="15" maxlength="43"></td>
		<td class="CR2"><input id="guestDnsServer" name="lan1_ipv6_dns" value="<% nvram_get("lan1_ipv6_dns"); %>" size="15" maxlength="43"></td>
	</tr>
	<tr>
		<td class="CL"
		onMouseOver="return overlib(ipv6hint6to4, LEFT);"
		onMouseOut="return nd();">
		<!--#tr id="ipv6.10"-->6to4 subnet ID<!--#endtr-->
		</td>
		<td class="CR2"><input id="subnetID" name="lan_ipv6_6to4id" value="<% nvram_get("lan_ipv6_6to4id"); %>" size="15" maxlength="5"></td>
		<td class="CR2"><input id="guestSubnetID" name="lan1_ipv6_6to4id" value="<% nvram_get("lan1_ipv6_6to4id"); %>" size="15" maxlength="5"></td>
	</tr>
</table>
<!--
#endif  /* BCMVISTAROUTER */
-->	

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
