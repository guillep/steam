rendering
signOnUsingOAuth2Google: aCallbackUrl

	self responsePanel: (STZnSSOSeasideGoogleOAuth2 new application: self; yourself).
	self responsePanel gotoSignOn: aCallbackUrl