package com.condenast{
import flash.external.ExternalInterface;
import flash.system.Capabilities;
	public class InformR{
		public var userBrowser:String;
		public var userFlash:String;

    		public function InformR() {
			init();
    		}
		public function init():void{
			try{
				var userAgent:String = ExternalInterface.call('window.navigator.userAgent.toString');
				var browser:String;
				if (userAgent.indexOf("Safari") != -1){
                    			browser = "Safari";
                		}
                		if (userAgent.indexOf("Firefox") != -1){
                    			browser = "Firefox";
                		}
                		if (userAgent.indexOf("Chrome") != -1){
                    			browser = "Chrome";
                		}
                		if (userAgent.indexOf("MSIE") != -1){
                    			browser = "Internet Explorer";
                		}
                		if (userAgent.indexOf("Opera") != -1){
                 	   		browser = "Opera";
                		}
				userBrowser = browser;
			}catch(e:Error){}
			var version:String = Capabilities.version.split(' ')[Capabilities.version.split(' ').length-1].split(',')[0];
			userFlash = (version == '11')?'11':'10';
		}
	}
}
