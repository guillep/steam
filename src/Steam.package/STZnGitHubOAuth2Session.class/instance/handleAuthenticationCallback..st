public
handleAuthenticationCallback: aParameterDictionary
	| code tokenRequest tokenResponse |
	code := aParameterDictionary at: 'code' ifAbsent: [ ^ nil ].
	tokenRequest := (ZnRequest post: (ZnUrl fromString: 'https://github.com/login/oauth/access_token'))
		entity:
				(ZnApplicationFormUrlEncodedEntity new
						at: 'code' put: code;
						at: 'client_id' put: self consumerData key;
						at: 'client_secret' put: self consumerData secret;
						at: 'redirect_uri' put: self redirectUrl;
						at: 'grant_type' put: 'authorization_code';
						yourself);
		yourself.
	tokenResponse := ZnClient new
		request: tokenRequest;
		post.
	accessToken := tokenResponse at: 'access_token'