resources
oauthConsumerData
	^ STZnOAuth2ConsumerData 
		key: (self application preferenceAt: #oauth2GithubClientId)
		secret: (self application preferenceAt: #oauth2GithubClientSecret)
		redirectUrl: (self application preferenceAt: #oauth2GithubRedirectUrl)