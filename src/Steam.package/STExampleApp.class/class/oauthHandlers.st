initialization
oauthHandlers
	^ {(STGoogleAuthHandler
		key: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com'
		secret: 'GQOJLyJBOTpgMFkwKgk-Dz7Y'
		redirectUrl: 'http://localhost:' , self seasideServer port asString , '/oauth2callback').
	(STGithubAuthHandler
		key: 'aeb2f431d21a8e800915'
		secret: '925919fb364bcfca1341cf7b06eb86b44ee9f0d8'
		redirectUrl: 'http://localhost:' , self seasideServer port asString , '/oauth2callback')}