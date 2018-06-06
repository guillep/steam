rendering
signOnUsingOAuth2Github: aCallbackUrl
	
	self responsePanel: (STZnSSOSeasideGithubOAuth2 new appComponent: appComponent ; yourself).
	self responsePanel gotoSignOn: aCallbackUrl