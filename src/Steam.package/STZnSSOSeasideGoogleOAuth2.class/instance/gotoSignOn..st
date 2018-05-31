as yet unclassified
gotoSignOn: aCallbackUrl
	| state |
	oauthSession := STZnGoogleOAuth2Session new
		setConsumerData: self oauthConsumerData;
		yourself.
	
	state := String
		streamContents: [ :stream | 
			stream
				nextPutAll: aCallbackUrl asString;
				nextPut: $?;
				nextPutAll: aCallbackUrl queryString ].
	self requestContext
		redirectTo: (oauthSession authenticationUrlWithState: state);
		respond