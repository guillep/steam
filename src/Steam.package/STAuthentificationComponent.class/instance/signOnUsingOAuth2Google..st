rendering
signOnUsingOAuth2Google: aCallbackUrl

	self responsePanel: (STZnSSOSeasideGoogleOAuth2 new appComponent: appComponent ; yourself).
	self responsePanel gotoSignOn: aCallbackUrl