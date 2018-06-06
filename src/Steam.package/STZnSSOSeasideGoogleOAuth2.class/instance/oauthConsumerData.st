resources
oauthConsumerData
	^ STZnOAuth2ConsumerData 
		key: ( self application preferenceAt: #oauth2GoogleClientId)
		secret: ( self application preferenceAt: #oauth2GoogleClientSecret)
		redirectUrl: ( self application preferenceAt: #oauth2GoogleRedirectUrl)