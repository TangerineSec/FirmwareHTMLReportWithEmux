var array2Dv;
var array2DvMF;
var array2DvNM;
var Total_Clients = 0;
var Total_MacFilterList = 0;
var Total_Device = 0;
var Current_MacFilterList = 0;
var Time_ClientList;
var Get__MACAddress;
var Get__DeviceName;
var Get__NickName;
var Get__ReserveIP;
var Get__SetNickNameMark;
var SetNickName;
var Check_Flag;
var Client_Type = "Host";
var tmpXML_SetClientInfo;
var tmpXML_SetMACFilters2;
var tmpXML_ScheduleList;
var tmpXML_ScheduleCnt;

function PreGetHNAP()	{	HNAP.GetXMLAsync("SetClientInfo", null, "GetXML", function(xml)		{	PreGetHNAP_2(xml)	});	}
function PreGetHNAP_2(result_xml)	{	if (result_xml != null)	{	tmpXML_SetClientInfo = result_xml;	HNAP.GetXMLAsync("SetMACFilters2", null, "GetXML", function(xml)	{	PreGetHNAP_3(xml)	});}	}
function PreGetHNAP_3(result_xml)	{	if (result_xml != null)	{	tmpXML_SetMACFilters2 = result_xml;	}	}

function Get_ClientInfo(c_type)
{
	Client_Type = c_type;
	Time_GetUSBStatus = window.clearInterval(Time_GetUSBStatus);
	Time_GetConnectionUpTime = window.clearInterval(Time_GetConnectionUpTime);
	Time_GetConnectionUpTime_IPv6 = window.clearInterval(Time_GetConnectionUpTime_IPv6);
	HNAP.GetXMLAsync("GetMultipleHNAPs", null, "GetXML", function(xml)	{	GetResult_CI(xml)	});
}
function GetResult_CI(result_xml)
{
	if (result_xml != null)
	{
		result_xml.Set("GetMultipleHNAPs/GetClientInfo");
		result_xml.Set("GetMultipleHNAPs/GetMACFilters2");
		HNAP.SetXMLAsync("GetMultipleHNAPs", result_xml, function(xml)	{	GetResult2_CI(xml);	});
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult_CI");	}	}
}
function GetResult2_CI(result_xml)
{
	var GetResult2_CI = result_xml.Get("GetMultipleHNAPsResponse/GetMultipleHNAPsResult");
	var tmpMacList = [];
	
	if (GetResult2_CI == "OK")
	{
		var count = 0, CheckCount = 0, TotalCount = 0;
		Total_Clients = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo#");
		// do it later
		// document.getElementById("Total_ConnectedClients").innerHTML = Total_Clients;
		Total_MacFilterList = result_xml.Get("GetMultipleHNAPsResponse/GetMACFilters2Response/MACList/MACInfo#");
		Total_Device = Total_Clients + Total_MacFilterList;
		array2Dv = new Array2DVar(Total_Device, 12);
		if (Client_Type == "Host")
		{
			for (var i = 1; i <= Total_Clients; i ++)
			{
				var GetClientType = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/Type");
				if (GetClientType == "LAN" || GetClientType == "WiFi_2.4G" || GetClientType == "WiFi_5G")
				{
					var mac = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/MacAddress");

					if(tmpMacList.indexOf(mac) >= 0)
						continue;

					tmpMacList.push(mac);

					array2Dv[count][11] = "";
					array2Dv[count][10] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/Type");
					array2Dv[count][0] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/DeviceName");
					array2Dv[count][1] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/MacAddress");
					array2Dv[count][2] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/IPv4Address");
					array2Dv[count][3] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/IPv6Address");
					array2Dv[count][9] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/NickName");
					array2Dv[count][5] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/ReserveIP");
					var split_ClientMacAddress = array2Dv[count][1].split(/[\s:]+/);
					var get_SplitClientMacAddress1 = split_ClientMacAddress[split_ClientMacAddress.length - 6];
					var get_SplitClientMacAddress2 = split_ClientMacAddress[split_ClientMacAddress.length - 5];
					var get_SplitClientMacAddress3 = split_ClientMacAddress[split_ClientMacAddress.length - 4];
					var FullStr_ClientMacAddress = get_SplitClientMacAddress1 + get_SplitClientMacAddress2 + get_SplitClientMacAddress3;
					var Str_toUpperCase = FullStr_ClientMacAddress.toUpperCase();
					if (allText.match(Str_toUpperCase) == Str_toUpperCase)
					{
						var StrIndexOfNumber = allText.indexOf(Str_toUpperCase) + 7;
						var StrIndexOfNumber_ToString = allText.substring(StrIndexOfNumber).split(/[\s,]+/);
						array2Dv[count][4] = decode_char_text(StrIndexOfNumber_ToString[0]);
					}
					else	{	array2Dv[count][4] = "Unknown Vendor";	}
					if (array2Dv[count][3] == "")	{	array2Dv[count][3] = "";	}
					
					count ++;
				}
			}
		}
		if (Client_Type == "Guest")
		{
			for (var i = 1; i <= Total_Clients; i ++)
			{
				var GetClientType = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/Type");
				if (GetClientType == "WiFi_2.4G_Guest" || GetClientType == "WiFi_5G_Guest")
				{
					var mac = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/MacAddress");

					if(tmpMacList.indexOf(mac) >= 0)
						continue;

					tmpMacList.push(mac);
					
					// code are the same...
					array2Dv[count][11] = "";
					array2Dv[count][10] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/Type");
					array2Dv[count][0] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/DeviceName");
					array2Dv[count][1] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/MacAddress");
					array2Dv[count][2] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/IPv4Address");
					array2Dv[count][3] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/IPv6Address");
					array2Dv[count][9] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/NickName");
					array2Dv[count][5] = result_xml.Get("GetMultipleHNAPsResponse/GetClientInfoResponse/ClientInfoLists/ClientInfo:" + i + "/ReserveIP");
					var split_ClientMacAddress = array2Dv[count][1].split(/[\s:]+/);
					var get_SplitClientMacAddress1 = split_ClientMacAddress[split_ClientMacAddress.length - 6];
					var get_SplitClientMacAddress2 = split_ClientMacAddress[split_ClientMacAddress.length - 5];
					var get_SplitClientMacAddress3 = split_ClientMacAddress[split_ClientMacAddress.length - 4];
					var FullStr_ClientMacAddress = get_SplitClientMacAddress1 + get_SplitClientMacAddress2 + get_SplitClientMacAddress3;
					var Str_toUpperCase = FullStr_ClientMacAddress.toUpperCase();
					if (allText.match(Str_toUpperCase) == Str_toUpperCase)
					{
						var StrIndexOfNumber = allText.indexOf(Str_toUpperCase) + 7;
						var StrIndexOfNumber_ToString = allText.substring(StrIndexOfNumber).split(/[\s,]+/);
						array2Dv[count][4] = decode_char_text(StrIndexOfNumber_ToString[0]);
					}
					else	{	array2Dv[count][4] = "Unknown Vendor";	}
					if (array2Dv[count][3] == "")	{	array2Dv[count][3] = "";	}
					
					count ++;
				}
			}
		}
		
		if (Total_MacFilterList >= 1)
		{
			for (var j = 0; j < Total_Device; j ++)
			{
				var checkMac = 0;	var checkSN = 0;	var checkTime = 0;
				for (var k = 1; k <= Total_MacFilterList; k ++)
				{
					var tmpMAC = result_xml.Get("GetMultipleHNAPsResponse/GetMACFilters2Response/MACList/MACInfo:" + k + "/MacAddress");
					var tmpSCH = decode_char_text(result_xml.Get("GetMultipleHNAPsResponse/GetMACFilters2Response/MACList/MACInfo:" + k + "/ScheduleName"));
					var tmpBLK = result_xml.Get("GetMultipleHNAPsResponse/GetMACFilters2Response/MACList/MACInfo:" + k + "/Status");
					// wtf is this?
					if (array2Dv[j][1] && array2Dv[j][1].toLowerCase() == tmpMAC.toLowerCase())
					{
						checkMac = 1;
					}
					
					if (checkMac == 1)
					{
						if (tmpSCH != "" || tmpSCH.length != 0)
						{
							array2Dv[j][11] = tmpSCH;
							for (var n = 1; n <= tmpXML_ScheduleCnt; n ++)
							{
								var sn = decode_char_text(tmpXML_ScheduleList.Get("GetScheduleSettingsResponse/ScheduleInfoLists:" + n + "/ScheduleName"));
								if (tmpSCH == sn)
								{
									checkSN = 1;
									 // var tmpBLK = result_xml.Get("GetMultipleHNAPsResponse/GetMACFilters2Response/MACList/MACInfo:" + k + "/Status");
									 if (tmpBLK == "true")	{	checkTime = 1;	}
								}
							}

							if(tmpSCH == "Always" && tmpBLK == "true")
								checkTime = 1;
							
							if (array2Dv[j][10] == "LAN")
							{
								array2Dv[j][6] = I18N("j", "Enabled");
								array2Dv[j][7] = "#FF0000";
								if (checkTime == 1)	{	array2Dv[j][8] = "link_IconE_Block";	}
								else				{	array2Dv[j][8] = "link_IconE_Allow";	}
							}
							else if (array2Dv[j][10] == "WiFi_2.4G" || array2Dv[j][10] == "WiFi_5G" || array2Dv[j][10] == "WiFi_2.4G_Guest" || array2Dv[j][10] == "WiFi_5G_Guest")
							{
								array2Dv[j][6] = I18N("j", "Enabled");
								array2Dv[j][7] = "#FF0000";
								if (checkTime == 1)	{	array2Dv[j][8] = "link_IconW_Block";	}
								else				{	array2Dv[j][8] = "link_IconW_Allow";	}
							}
							break;
						}
						else
						{
							if (array2Dv[j][10] == "LAN")
							{
								array2Dv[j][6] = I18N("j", "Enabled");
								array2Dv[j][7] = "#FF0000";
								array2Dv[j][8] = "link_IconE_Block";
							}
							else if (array2Dv[j][10] == "WiFi_2.4G" || array2Dv[j][10] == "WiFi_5G" || array2Dv[j][10] == "WiFi_2.4G_Guest" || array2Dv[j][10] == "WiFi_5G_Guest")
							{
								array2Dv[j][6] = I18N("j", "Enabled");
								array2Dv[j][7] = "#FF0000";
								array2Dv[j][8] = "link_IconW_Block";
							}
							break;
						}
					}
					else
					{
						if (array2Dv[j][10] == "LAN")
						{
							array2Dv[j][6] = I18N("j", "Disabled");
							array2Dv[j][7] = "#000000";
							array2Dv[j][8] = "link_IconE_Allow";
						}
						else if (array2Dv[j][10] == "WiFi_2.4G" || array2Dv[j][10] == "WiFi_5G" || array2Dv[j][10] == "WiFi_2.4G_Guest" || array2Dv[j][10] == "WiFi_5G_Guest")
						{
							array2Dv[j][6] = I18N("j", "Disabled");
							array2Dv[j][7] = "#000000";
							array2Dv[j][8] = "link_IconW_Allow";
						}
					}
				}
			}
		}
		else
		{
			for (var j = 0; j < Total_Device; j ++)
			{
				if (array2Dv[j][10] == "LAN")
				{
					array2Dv[j][6] = I18N("j", "Disabled");
					array2Dv[j][7] = "#000000";
					array2Dv[j][8] = "link_IconE_Allow";
				}
				else if (array2Dv[j][10] == "WiFi_2.4G" || array2Dv[j][10] == "WiFi_5G" || array2Dv[j][10] == "WiFi_2.4G_Guest" || array2Dv[j][10] == "WiFi_5G_Guest")
				{
					array2Dv[j][6] = I18N("j", "Disabled");
					array2Dv[j][7] = "#000000";
					array2Dv[j][8] = "link_IconW_Allow";
				}
			}
		}

		ShowClient_List(count);
		document.getElementById("Total_ConnectedClients").innerHTML = tmpMacList.length;
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult2_CI");	}	}
}
function ShowClient_List(val)
{
	$(document).tooltip("disable");
	$(document).tooltip("enable");
	var tmp = "";
	var print_Count = 0;
	var TCWithMF = val;
	tmp = "<table class=\"block\" border=\"0\" ondragstart=\"return false\" onselectstart=\"return false\" width=\"900px\">";
	tmp += "<tbody>";
	tmp += "<tr>";
	
	if (val != 0)
	{
		document.getElementById("Client_Info").style.display = "none";
		document.getElementById("Client_Group").style.display = "table-row";
		
		for (var i = 1; i <= TCWithMF; i ++)
		{
			var Get_ClientName = array2Dv[print_Count][0];
			var Get_ClientMacAddress = array2Dv[print_Count][1];
			var Get_ClientIPV4Address = array2Dv[print_Count][2];
			var Get_ClientIPV6Address = array2Dv[print_Count][3];
			var Get_ClientVendor = array2Dv[print_Count][4];
			// var Get_ClientReservationIP = array2Dv[print_Count][5];
			var Get_ClientMacFilter = array2Dv[print_Count][6];
			var Get_FontColor = array2Dv[print_Count][7];
			var Get_CSSBackGround = array2Dv[print_Count][8];
			var Get_ClientNickName = array2Dv[print_Count][9];
			
			if (typeof(Get_ClientMacAddress) == "undefined" || Get_ClientMacAddress.length == 0)	{	break;	}
			if (Get_ClientName == 0)		{	Get_ClientName = "Unknown";	}
			if (Get_ClientNickName != 0)	{	Get_ClientName = Get_ClientNickName;	}
			
			if (i % 3 != 0)
			{
				ClientNumber = i;
				tmp += "<td>";
				tmp += "<div class =\"client_Tag\" style =\"cursor:default\">";
				tmp += "<div class =\"" + Get_CSSBackGround + "\"></div>";
				tmp += "<div class =\"client_Info\">";
				tmp += "<div class =\"client_Name\">" + Get_ClientName + "</div>";
				tmp += "<div class =\"client_EditImage\" onclick =\"client_EditMember(" + ClientNumber + ")\" style =\"cursor:pointer\"></div>";
				tmp += "<div class =\"client_Vender\">" + Get_ClientVendor + "</div>";
				tmp += "<div class =\"client_IPv4Address\">" + Get_ClientIPV4Address + "</div>";
				tmp += "<div class =\"client_IPv6Address\" id=\"IPv6Address_Client_" + ClientNumber + "\">" + Get_ClientIPV6Address + "</div>";
				if (Get_ClientMacFilter == "Disabled")	{	tmp += "<div class =\"client_Access\">" + I18N("j", "Parental Control") + ": " + "<font color =\"" + Get_FontColor + "\">" +Get_ClientMacFilter + "</font></div>";	}
				else									{	tmp += "<div class =\"client_Access\">" + I18N("j", "Parental Control") + ": " + "<font color =\"" + Get_FontColor + "\">" +Get_ClientMacFilter + "</font></div>";	}
				tmp += "</div>";
				tmp += "</div>";
				tmp += "</td>";
			}
			else
			{
				ClientNumber = i;
				tmp += "<td>";
				tmp += "<div class =\"client_Tag\" style =\"cursor:default\">";
				tmp += "<div class =\"" + Get_CSSBackGround + "\"></div>";
				tmp += "<div class =\"client_Info\">";
				tmp += "<div class =\"client_Name\">" + Get_ClientName + "</div>";
				tmp += "<div class =\"client_EditImage\" onclick=\"client_EditMember(" + ClientNumber + ")\" style=\"cursor:pointer\"></div>";
				tmp += "<div class =\"client_Vender\">" + Get_ClientVendor + "</div>";
				tmp += "<div class =\"client_IPv4Address\">" + Get_ClientIPV4Address + "</div>";
				tmp += "<div class =\"client_IPv6Address\" id=\"IPv6Address_Client_" + ClientNumber + "\">" + Get_ClientIPV6Address + "</div>";
				
				if (Get_ClientMacFilter == "Disabled")	{	tmp += "<div class =\"client_Access\">" + I18N("j", "Parental Control") + ": " + "<font color=\"" + Get_FontColor + "\">" +Get_ClientMacFilter + "</font></div>";	}
				else									{	tmp += "<div class =\"client_Access\">" + I18N("j", "Parental Control") + ": " + "<font color=\"" + Get_FontColor + "\">" +Get_ClientMacFilter + "</font></div>";	}
				
				tmp += "</div>";
				tmp += "</div>";
				tmp += "</td>";
				tmp += "</tr>";
			}
			print_Count ++;
		}
		
		if (Total_Device % 3 == 1)
		{
			tmp += "<td>";
			tmp += "</td>";
			tmp += "</tr>";
		}
	}
	else
	{
		if (val == 0)
		{
			document.getElementById("Client_Info").style.display = "table-row";
			document.getElementById("Client_Group").style.display = "none";
		}
	}
	
	tmp += "</tbody>";
	tmp += "</table>";
	document.getElementById("Client_Group").innerHTML = tmp;
	var ipv6_client = 0;
	for (var i = 1; i <= TCWithMF; i ++)
	{
		document.getElementById('IPv6Address_Client_' + i).title = array2Dv[ipv6_client][3];
		ipv6_client ++;
	}
	Time_ClientList = setTimeout("ClearAndRenew()", 3000);
}

function client_EditMember(GetValue)
{
	var schedule = document.getElementById("schedule");
	var Get_ClientName = array2Dv[GetValue - 1][0].slice(0,32);
	var Get_ClientMacAddress = array2Dv[GetValue - 1][1];
	var Get_ClientIPV4Address = array2Dv[GetValue - 1][2];
	var Get_ClientIPV6Address = array2Dv[GetValue - 1][3];
	var Get_ClientVendor = array2Dv[GetValue - 1][4];
	var Get_ClientReservationIP = array2Dv[GetValue - 1][5];
	var Get_ClientMacFilter = array2Dv[GetValue - 1][6];
	var Get_ClientNickName = array2Dv[GetValue - 1][9].slice(0,32);
	var Get_ClientStatus = array2Dv[GetValue - 1][8];
	var Get_ClientSchedules = array2Dv[GetValue - 1][11];

	if (Get_ClientStatus != "link_IconX_Block")
	{
		document.getElementById("client_Name").disabled = false;
		document.getElementById("show_Vendor").style.display = "table-row";
		document.getElementById("show_MACAddress").style.display = "table-row";
		document.getElementById("show_ReserveIP").style.display = "table-row";
		
		document.getElementById("IPAdrReserve_Info").innerHTML= "";
		
		if(Get_ClientReservationIP==""){
			document.getElementById("show_IPAdrReserve").style.display = "none";
			document.getElementById("show_IPAdr").style.display = "table-row";
		}
		else{
			document.getElementById("show_IPAdrReserve").style.display = "table-row";
			document.getElementById("show_IPAdr").style.display = "none";
		}
		
		if (Get_ClientNickName != 0)	{	document.getElementById("client_Name").value = Get_ClientNickName;	}
		else							{	document.getElementById("client_Name").value = Get_ClientName;		}
		
		document.getElementById("Name_TimmyCheck").value = Get_ClientName;
		document.getElementById("client_IPAdrReserve").value = Get_ClientReservationIP;
		document.getElementById("client_MACAddress").innerHTML = Get_ClientMacAddress;
		document.getElementById("client_IPAdr").innerHTML = Get_ClientIPV4Address;
		
		if (Get_ClientVendor != 0)	{	document.getElementById("client_Vendor").innerHTML = Get_ClientVendor;	}
		else						{	document.getElementById("client_Vendor").innerHTML = "N/A";				}
		
		if (Get_ClientReservationIP != 0)
		{
			presetCheckBox("enableReserveIP", true);
			document.getElementById("TimmyCheckBox2").checked = true;
		}
		else
		{
			presetCheckBox("enableReserveIP", false);
			document.getElementById("TimmyCheckBox2").checked = false;
		}
		
		var getAllowedString = I18N("j", "Disabled");
		if (Get_ClientMacFilter == getAllowedString)
		{
			presetCheckBox("enableAccess", false);
			document.getElementById("TimmyCheckBox").checked = false;
			document.getElementById("show_Schedule").style.display = "none";
		}
		else
		{
			presetCheckBox("enableAccess", true);
			document.getElementById("TimmyCheckBox").checked = true;
			document.getElementById("show_Schedule").style.display = "table-row";
			if (Get_ClientSchedules != "" || Get_ClientSchedules != null)
			{
				for (var i = 1; i <= tmpXML_ScheduleCnt; i ++)
				{
					if(schedule.options[i].value === Get_ClientSchedules)
					{
						$("#schedule").selectbox('detach');
						document.getElementById("schedule").options[i].selected = true;
						$("#schedule").selectbox('attach');
						break;
					}
				}
			}
			else
			{
				$("#schedule").selectbox('detach');
				document.getElementById("schedule").options[0].selected = true;
				$("#schedule").selectbox('attach');
			}
		}
	}
	else
	{
		document.getElementById("client_Name").disabled = true;
		document.getElementById("show_Vendor").style.display = "none";
		document.getElementById("show_IPAdrReserve").style.display = "none";
		document.getElementById("show_MACAddress").style.display = "table-row";
		document.getElementById("show_ReserveIP").style.display = "none";
		document.getElementById("show_IPAdr").style.display = "none";
		
		if (Get_ClientNickName != 0)	{	document.getElementById("client_Name").value = Get_ClientNickName;	}
		else							{	document.getElementById("client_Name").value = Get_ClientName;		}
		
		document.getElementById("Name_TimmyCheck").value = Get_ClientName;
		document.getElementById("client_MACAddress").innerHTML = Get_ClientMacAddress;
		
		if (Get_ClientReservationIP != 0)
		{
			presetCheckBox("enableReserveIP", true);
			document.getElementById("TimmyCheckBox2").checked = true;
		}
		else
		{
			presetCheckBox("enableReserveIP", false);
			document.getElementById("TimmyCheckBox2").checked = false;
		}
		
		var getAllowedString = I18N("j", "Disabled");
		if (Get_ClientMacFilter == getAllowedString)
		{
			presetCheckBox("enableAccess", false);
			document.getElementById("TimmyCheckBox").checked = false;
			document.getElementById("show_Schedule").style.display = "none";
		}
		else
		{
			presetCheckBox("enableAccess", true);
			document.getElementById("TimmyCheckBox").checked = true;
			document.getElementById("show_Schedule").style.display = "table-row";
			if (Get_ClientSchedules != "" || Get_ClientSchedules != null)
			{
				for (var i = 1; i <= tmpXML_ScheduleCnt; i ++)
				{
					if(schedule.options[i].value === Get_ClientSchedules)
					{
						$("#schedule").selectbox('detach');
						document.getElementById("schedule").options[i].selected = true;
						$("#schedule").selectbox('attach');
						break;
					}
				}
			}
			else
			{
				$("#schedule").selectbox('detach');
				document.getElementById("schedule").options[0].selected = true;
				$("#schedule").selectbox('attach');
			}
		}
	}
	document.getElementById("editPop").style.display = "inline";
}
function closeEditPOP()	{	
	var val = document.getElementById("client_IPAdrReserve").value;
	if(val!=""){
		if(!COMM_ValidV4Format(val) || !COMM_ValidV4Addr(val)){
			document.getElementById("IPAdrReserve_Info").innerHTML= I18N("j","err_address_Check");
		}
		else{
		HNAP.GetXMLAsync("GetClientInfo", null, "GetValue", function(xml){	GetResult_GCI_1(xml)	});
		}
	}
	else{
		HNAP.GetXMLAsync("GetClientInfo", null, "GetValue", function(xml){	GetResult_GCI_1(xml)	});
	}
}
function GetResult_GCI_1(result_xml)
{
	var GetResult_GCI_1 = result_xml.Get("GetClientInfoResponse/GetClientInfoResult");
	if (GetResult_GCI_1 == "OK")
	{
		if (valueChanged == 1)
		{
			Get__MACAddress = document.getElementById("client_MACAddress").innerHTML;
			Get__DeviceName = document.getElementById("client_Name").value;
			Get__NickName = document.getElementById("Name_TimmyCheck").value;
			Get__ReserveIP = document.getElementById("client_IPAdrReserve").value;
			Get__SetNickNameMark;
			var NickNameListCounter = 1;
			SetNickName = 1;
			Check_Flag = 0;
			array2DvNM = new Array2DVar(Total_Device, 3);
			for (var n = 0; n < Total_Device; n ++)
			{
				array2DvNM[n][0] = result_xml.Get("GetClientInfoResponse/ClientInfoLists/ClientInfo:" + NickNameListCounter + "/MacAddress");
				array2DvNM[n][1] = result_xml.Get("GetClientInfoResponse/ClientInfoLists/ClientInfo:" + NickNameListCounter + "/NickName");
				array2DvNM[n][2] = result_xml.Get("GetClientInfoResponse/ClientInfoLists/ClientInfo:" + NickNameListCounter + "/ReserveIP");
				NickNameListCounter ++;
			}
			
			var xml_SetClientInfo = tmpXML_SetClientInfo;
			for (var m = 0; m < Total_Device; m ++)
			{
				if (Get__MACAddress == array2DvNM[m][0])	{	Check_Flag = 1;	}
				
				if (Check_Flag == 1)
				{
					if (Get__DeviceName != 0)
					{
						xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/MacAddress", Get__MACAddress);
						if (Get__DeviceName == Get__NickName)	{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/NickName", "");					}
						else									{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/NickName", Get__DeviceName);	}
						if (document.getElementById("TimmyCheckBox2").checked == true)	{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/ReserveIP", Get__ReserveIP);	}
						else															{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/ReserveIP", "");				}
					}
					else
					{
						xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/MacAddress", Get__MACAddress);
						xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/NickName", "");
						if (document.getElementById("TimmyCheckBox2").checked == true)	{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/ReserveIP", Get__ReserveIP);	}
						else															{	xml_SetClientInfo.Set("SetClientInfo/ClientInfoLists/ClientInfo:" + SetNickName + "/ReserveIP", "");				}
					}
					SetNickName ++;
				}
				Check_Flag = 0;
			}
			HNAP.SetXMLAsync("SetClientInfo", xml_SetClientInfo, function(xml)	{	GetResult_GCI_2(xml);	});
		}
		else	{	HNAP.GetXMLAsync("GetMACFilters2", null, "GetValue", function(xml)	{	GetResult_GCI_3(xml)	});	}
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult_GCI_1");	}	}
}
function GetResult_GCI_2(result_xml)
{
	var GetResult_GCI_2 = result_xml.Get("SetClientInfoResponse/SetClientInfoResult");
	if (GetResult_GCI_2 == "OK")	
	{
		HNAP.GetXMLAsync("GetMACFilters2", null, "GetValue", function(xml)	{	GetResult_GCI_3(xml)	});	
	}
	else if(GetResult_GCI_2 == "ERROR_RESERVEIP_CONFLICT")
	{
		alert(I18N("j", "IP address cannot be the same."));
		return;
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult_GCI_2");	}	}
}
function GetResult_GCI_3(result_xml)
{
	var GetResult_GCI_3 = result_xml.Get("GetMACFilters2Response/GetMACFilters2Result");

	if (GetResult_GCI_3 == "OK")
	{
		var xml_SetMacFilter = tmpXML_SetMACFilters2;

		// clear old data in xml doc
		xml_SetMacFilter.Del('SetMACFilters2');

		var CheckCount = 0;
		var GetMacFilterListNumber = result_xml.Get("GetMACFilters2Response/MACList/MACInfo#");
		if (GetMacFilterListNumber > 0)
		{
			array2DvMF = new Array2DVar(GetMacFilterListNumber, 3);
			for (var i = 1; i <= GetMacFilterListNumber; i ++)
			{
				array2DvMF[CheckCount][0] = result_xml.Get("GetMACFilters2Response/MACList/MACInfo:" + i + "/DeviceName");
				array2DvMF[CheckCount][1] = result_xml.Get("GetMACFilters2Response/MACList/MACInfo:" + i + "/MacAddress");
				array2DvMF[CheckCount][2] = decode_char_text(result_xml.Get("GetMACFilters2Response/MACList/MACInfo:" + i + "/ScheduleName"));
				CheckCount ++;
			}
		}
		if (GetMacFilterListNumber == 0 && document.getElementById("TimmyCheckBox").checked == true)
		{
			var Set_Client_MACAddress = document.getElementById("client_MACAddress").innerHTML;
			var Set_Client_Description = document.getElementById("client_Name").value;
			var Set_Client_ScheduleName = document.getElementById("schedule").value;
			xml_SetMacFilter.Set("SetMACFilters2/Enabled", "true");
			xml_SetMacFilter.Set("SetMACFilters2/IsAllowList", "false");
			xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:1/MacAddress", Set_Client_MACAddress);
			xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:1/DeviceName", Set_Client_Description);
			// 111
			xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:1/ScheduleName", encode_char_text(Set_Client_ScheduleName));
			// if (Set_Client_ScheduleName != "Always")	{	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:1/ScheduleName", encode_char_text(Set_Client_ScheduleName));	}
			// else										{	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:1/ScheduleName", "");	}
			HNAP.SetXMLAsync("SetMACFilters2", xml_SetMacFilter, function(xml)	{	GetResult_GCI_4(xml);	});
		}
		else if (GetMacFilterListNumber >= 1 && document.getElementById("TimmyCheckBox").checked == true)
		{
			var Set_Client_MACAddress = document.getElementById("client_MACAddress").innerHTML;
			var Set_Client_Description = document.getElementById("client_Name").value;
			var Set_Client_ScheduleName = document.getElementById("schedule").value;
			var targetIndex = 0;
			var Competence = 999;
			// var ScheduleCheck = 0;
			var SetCounter = 1;



			// how about less code?

			// var isSet = false;

			// var setFilter = function(idx){
			// 	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + idx + "/MacAddress", Set_Client_MACAddress);
			// 	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + idx + "/DeviceName", Set_Client_Description);
			// 	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + idx + "/ScheduleName", encode_char_text(Set_Client_ScheduleName));
			// };

			// for(var i = 0; i < GetMacFilterListNumber; i++){
			// 	if(Set_Client_MACAddress.toLowerCase() == array2DvMF[i][1].toLowerCase()){
			// 		isSet = true;
			// 		setFilter();
			// 	}
			// 	else{
			// 		xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + (i+1) + "/MacAddress", array2DvMF[i][1]);
			// 		xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + (i+1) + "/DeviceName", array2DvMF[i][0]);
			// 		xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + (i+1) + "/ScheduleName", encode_char_text(array2DvMF[i][2]));
			// 	}
			// }

			// if(!isSet)
			// 	setFilter();

			for (var i = 0; i < GetMacFilterListNumber; i ++)
			{
				if (Set_Client_MACAddress.toLowerCase() == array2DvMF[i][1].toLowerCase())	{	targetIndex = i;	break;}
				else	{	targetIndex ++;	}
			}
			
			// if (targetIndex < GetMacFilterListNumber)
			// {
			// 	if (Set_Client_ScheduleName != array2DvMF[targetIndex][2])	{	ScheduleCheck = 1;	}
			// }
			
			xml_SetMacFilter.Set("SetMACFilters2/Enabled", "true");
			xml_SetMacFilter.Set("SetMACFilters2/IsAllowList", "false");

			if (targetIndex < GetMacFilterListNumber)
			{
				for (var j = 0;	j < GetMacFilterListNumber; j ++)
				{
					if (targetIndex == j)
					{
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", Set_Client_MACAddress);
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", Set_Client_Description);
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(Set_Client_ScheduleName));
						// if (Set_Client_ScheduleName != "Always")	{	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(Set_Client_ScheduleName));	}
						// else										{	xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", "");	}
					}
					else
					{
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", array2DvMF[SetCounter - 1][1]);
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", array2DvMF[SetCounter - 1][0]);
						xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(array2DvMF[SetCounter - 1][2]));
					}
					SetCounter ++;
				}
			}
			// else if (targetIndex < GetMacFilterListNumber && ScheduleCheck == 0)	{	ClearAndRenew();	}
			else
			{
				for (var j = 0;	j < GetMacFilterListNumber; j ++)
				{
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", array2DvMF[SetCounter - 1][1]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", array2DvMF[SetCounter - 1][0]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(array2DvMF[SetCounter - 1][2]));
					SetCounter ++;
				}
				xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", Set_Client_MACAddress);
				xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", Set_Client_Description);
				xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(Set_Client_ScheduleName));
			}
			HNAP.SetXMLAsync("SetMACFilters2", xml_SetMacFilter, function(xml)	{	GetResult_GCI_4(xml);	});
		}
		else if (GetMacFilterListNumber > 1 && document.getElementById("TimmyCheckBox").checked == false)
		{
			var Set_Client_MACAddress = document.getElementById("client_MACAddress").innerHTML;
			var Set_Client_Description = document.getElementById("client_Name").value;
			var Set_Client_ScheduleName = document.getElementById("schedule").value;
			var targetIndex = 0;
			var Competence = 999;
			var ScheduleCheck = 0;
			var SetCounter = 1;
			for (var i = 0; i < GetMacFilterListNumber; i ++)
			{
				if (Set_Client_MACAddress.toLowerCase() == array2DvMF[i][1].toLowerCase())	{	targetIndex = i;	break;}
				else	{	targetIndex ++;	}
			}
			xml_SetMacFilter.Set("SetMACFilters2/Enabled", "true");
			xml_SetMacFilter.Set("SetMACFilters2/IsAllowList", "false");
			
			if (targetIndex < GetMacFilterListNumber-1)
			{
				var tmp_Count = 0;
				array2DvMF_a = new Array2DVar(GetMacFilterListNumber, 3);
				for (var i = 0; i < GetMacFilterListNumber; i ++)
				{
					array2DvMF_a[tmp_Count][0] = array2DvMF[i][0];
					array2DvMF_a[tmp_Count][1] = array2DvMF[i][1].toLowerCase();
					array2DvMF_a[tmp_Count][2] = array2DvMF[i][2];
					if (Set_Client_MACAddress.toLowerCase() != array2DvMF[i][1].toLowerCase())	{	tmp_Count ++;	}
				}
				for (var k = 0 ; k < GetMacFilterListNumber-1; k ++)
				{
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", array2DvMF_a[k][1]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", array2DvMF_a[k][0]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(array2DvMF_a[k][2]));
					SetCounter ++;
				}
				// why send empty list?????
				// xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", "");
				// xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", "");
				// xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", "");
			}
			else
			{
				for (var k = 0 ; k < GetMacFilterListNumber-1; k ++)
				{
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/MacAddress", array2DvMF[SetCounter - 1][1]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/DeviceName", array2DvMF[SetCounter - 1][0]);
					xml_SetMacFilter.Set("SetMACFilters2/MACList/MACInfo:" + SetCounter + "/ScheduleName", encode_char_text(array2DvMF[SetCounter - 1][2]));
					SetCounter ++;
				}
			}
			HNAP.SetXMLAsync("SetMACFilters2", xml_SetMacFilter, function(xml)	{	GetResult_GCI_4(xml);	});
		}
		else if (GetMacFilterListNumber == 1 && document.getElementById("TimmyCheckBox").checked == false)
		{
			var Set_Client_MACAddress = document.getElementById("client_MACAddress").innerHTML;
			var Set_Client_Description = document.getElementById("client_Name").value;
			var Competence = 999;
			var SetCounter = 1;
			for (var i = 0; i < GetMacFilterListNumber; i ++)
			{
				if (Set_Client_MACAddress.toLowerCase() == array2DvMF[i][1].toLowerCase())	{	Competence = 1000;	break;	}
			}
			
			if (Competence == 1000)
			{
				xml_SetMacFilter.Set("SetMACFilters2/Enabled", "true");
				xml_SetMacFilter.Set("SetMACFilters2/IsAllowList", "false");
				xml_SetMacFilter.Set("SetMACFilters2/MACList", "");
				HNAP.SetXMLAsync("SetMACFilters2", xml_SetMacFilter, function(xml)	{	GetResult_GCI_4(xml);	});
			}
			else	{	ClearAndRenew();	}
		}
		else	{	ClearAndRenew();	}
		document.getElementById("editPop").style.display = "none";
		$("#schedule").selectbox('detach');
		document.getElementById("schedule").options[0].selected = true;
		$("#schedule").selectbox('attach');
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult_GCI_3");	}	}
}
function GetResult_GCI_4(result_xml)
{
	var GetResult_GCI_4 = result_xml.Get("SetMACFilters2Response/SetMACFilters2Result");
	if (GetResult_GCI_4 == "OK")
	{
		document.getElementById("check_btn").setAttribute("class", "styled_button_dis");
		document.getElementById("check_btn").disabled = true;
		ClearAndRenew();
	}
	else	{	if (DebugMode == 1)	{	alert("[!!GetXML Error!!] Function: GetResult_GCI_4");	}	}
}
function clearCreateRulePOP()
{
	document.getElementById("editPop").style.display = "none";
	$("#schedule").selectbox('detach');
	document.getElementById("schedule").options[0].selected = true;
	$("#schedule").selectbox('attach');
}

function ClearAndRenew()
{
	if (GetFlagD == true && GetFlagE == false)
	{
		clearTimeout(Time_ClientList);
		Get_ClientInfo(Client_Type);
	}
	else if (GetFlagD == false && GetFlagE == true)
	{
		clearTimeout(Time_ClientList);
		Get_ClientInfo(Client_Type);
	}
	else if (GetFlagD == false && GetFlagE == false)
	{
		document.getElementById("client_btn_Guest").setAttribute("class", "v4v6_linkstyle_2");
		document.getElementById("client_btn_Host").setAttribute("class", "v4v6_linkstyle_1");
		clearTimeout(Time_ClientList);
	}
	else
	{
		document.getElementById("client_btn_Guest").setAttribute("class", "v4v6_linkstyle_2");
		document.getElementById("client_btn_Host").setAttribute("class", "v4v6_linkstyle_1");
		clearTimeout(Time_ClientList);
	}
}

function Set_Param(str)
{
	if (str == "Host")
	{
		document.getElementById("client_btn_Guest").setAttribute("class", "v4v6_linkstyle_2");
		document.getElementById("client_btn_Host").setAttribute("class", "v4v6_linkstyle_1");
		GetFlagD = true;
		GetFlagE = false;
	}
	else if (str == "Guest")
	{
		document.getElementById("client_btn_Guest").setAttribute("class", "v4v6_linkstyle_1");
		document.getElementById("client_btn_Host").setAttribute("class", "v4v6_linkstyle_2");
		GetFlagD = false;
		GetFlagE = true;
	}
}

function Array2DVar(x, y)
{
	this.length = x;
	this.x = x;
	this.y = y;
	for(var i = 0; i < this.length; i++)	{	this[i] = new Array(y);	}
}