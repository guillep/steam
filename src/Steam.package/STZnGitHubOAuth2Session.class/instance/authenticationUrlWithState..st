public
authenticationUrlWithState: aStateString

	| authUrl |

	^ authUrl := (ZnUrl fromString: 'https://github.com/login/oauth/authorize')
		queryAt: 'response_type' put: 'code' ;
		queryAt: 'client_id' put: self consumerData key ;
		queryAt: 'scope' put: self scopeParameter;
		queryAt: 'redirect_uri' put: self redirectUrl ;
		queryAt: 'state' put: aStateString ;
		yourself.