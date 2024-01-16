/**
 * @constructor
 */
function SOAPSetDeviceSettings()
{
	this.DeviceName = "";
	this.AdminPassword = "";
	this.PresentationURL = "";
	this.CAPTCHA = false;
	this.ChangePassword = false;
};

// @prototype
SOAPSetDeviceSettings.prototype = 
{
	get AdminPassword(){
		return this._AdminPassword+"!";
	},

	set AdminPassword(val){
		this._AdminPassword = val;
	}
}



/**
 * @constructor
 */
function SOAPGetDeviceSettingsResponse()
{
	this.DeviceName = "";

	this.PresentationURL = "";
	this.CAPTCHA = false;
	this.ChangePassword = false;
};

// @prototype
SOAPGetDeviceSettingsResponse.prototype = 
{

}