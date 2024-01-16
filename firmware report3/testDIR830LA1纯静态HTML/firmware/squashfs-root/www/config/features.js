//common
function CommonDeviceInfo()
{
	this.bridgeMode = false;
	this.featureVPN = false;

	this.featureSharePort = true;
	this.featureDLNA = false;
	this.featureUPNPAV = true;
	
	this.helpVer = "0100";
}

// just hardcode, why not keep simple...
$.getScript("/config/deviceinfo.js", function(){
	DeviceInfo.prototype = new CommonDeviceInfo();
	DeviceInfo.prototype.constructor = DeviceInfo;
	var currentDevice = new DeviceInfo();
	
	//set device info
	sessionStorage.setItem('currentDevice', JSON.stringify(currentDevice));
});

