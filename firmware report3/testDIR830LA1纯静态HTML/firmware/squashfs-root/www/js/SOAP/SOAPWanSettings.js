/**
 * @constructor
 */
 function SOAPDNSSettings()
 {
	this.Primary = "";
	this.Secondary = "";
 }

/**
 * @constructor
 */
function SOAPSetWanSettings()
{
	this.Type = "";
	this.Username = "";
	this.Password = "";
	this.MaxIdleTime = 0;
	this.MTU = 1500;
	this.HostName = "";
	this.SetviceName = "";
	this.AutoReconnect = false;
	this.IPAddress = "";
	this.SubnetMask = "";
	this.Gateway = "";
	this.ConfigDNS = new SOAPDNSSettings();
	this.MacAddress = "";
};

// @prototype
SOAPSetWanSettings.prototype = 
{
	_getPwd:function Password(){
		return this.Password;
	},
	
//	get PasswordGUI(){
//		return AES_Decrypt128(this._Password);
//	},

	_setPwd: function Password(val){
		this.Password = AES_Encrypt128(val);
	}
}

/**
 * @constructor
 */
function SOAPGetWanSettingsResponse()
{
	this.Type = "";
	this.Username = "";
	this.Password = "";
	this.MaxIdleTime = 0;
	this.MTU = 1500;
	this.HostName = "";
	this.SetviceName = "";
	this.AutoReconnect = false;
	this.IPAddress = "";
	this.SubnetMask = "";
	this.Gateway = "";
	this.RuntimeDNS = new SOAPDNSSettings();
	this.ConfigDNS = new SOAPDNSSettings();
	this.MacAddress = "";
};

// @prototype
SOAPGetWanSettingsResponse.prototype = 
{	
	_getPwd:function Password(){
		return AES_Decrypt128(this.Password);
	},

	_setPwd:function Password(val){
		this._Password = val;
	}
}

/**
 * @constructor
 */
function SOAPSetTriggerADIC()
{
	this.TriggerADIC = false;
}

/**
 * @constructor
 */
function SOAPGetCurrentInternetStatus()
{
	this.InternetStatus = false;
}
