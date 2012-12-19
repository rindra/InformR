InformR
=====

Simple class to retrieve user data.

Usage
=====

First intantiate the informer class:

	var informr:InformR = new InformR;

The class has 2 properties:

	informr.userBrowser;
	informr.userFlash;
			
After processing the data you can call the appropriate counter event in your tracking class:

	HtmlEnabler.getInstance().counter("user_firefox", true);
	HtmlEnabler.getInstance().counter("user_chrome", true);
	HtmlEnabler.getInstance().counter("user_safari", true);
	HtmlEnabler.getInstance().counter("user_ie", true);
	HtmlEnabler.getInstance().counter("user_opera", true);
			
	HtmlEnabler.getInstance().counter("user_flash_10", true);
	HtmlEnabler.getInstance().counter("user_flash_11", true);
