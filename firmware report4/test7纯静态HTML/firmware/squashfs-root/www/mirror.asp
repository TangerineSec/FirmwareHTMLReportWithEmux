<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
<title> Mirror Port Setup</title>
</head>

<script>
function option_select(item, value)
{
        var i;
        if(item) {
                for (i=0; i<item.options.length; i++) {
                        if (item.options[i].value == value) {
                                item.options.selectedIndex = i;
                                break;
                        }
                }
        }
}

function page_load()
{
		var vlan1ports = "<% nvram_get("vlan1ports"); %>";
		if(vlan1ports == "0 1 2 3 5*") 
			option_select(document.getElementById("mirrorSelector"), "0");
		else
			option_select(document.getElementById("mirrorSelector"), "1");
}

</script>

<body onload="page_load()">
	Mirror setting
	<form method="post" name="mirrorselect" action="/mirror.cgi"  >
		<input type="hidden" name="token" value="<% genToken(); %>">
		<select id="mirrorSelector" name="mirror_en"  >
			<option value=0 >Disable</option>
			<option value=1 >Enable</option>
		</select>
		<input type="submit" class="button1" value="Apply">
	</form>
</body>
</html>