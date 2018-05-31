rendering
signOnUsingOAuth2Github: aCallbackUrl
	
	self responsePanel: (STZnSSOSeasideGithubOAuth2 new application: self; yourself).
	self responsePanel gotoSignOn: aCallbackUrl