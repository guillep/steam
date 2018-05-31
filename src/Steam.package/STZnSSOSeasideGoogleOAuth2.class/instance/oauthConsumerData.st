resources
oauthConsumerData

	^ STZnOAuth2ConsumerData 
		key: "(self application preferenceAt: #oauth2GithubClientId) "'268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com'
		secret: "(self application preferenceAt: #oauth2GithubClientSecret) "'GQOJLyJBOTpgMFkwKgk-Dz7Y'
		redirectUrl: "(self application preferenceAt: #oauth2GithubRedirectUrl) "'http://localhost:8080/oauth2callback'