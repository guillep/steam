public
getUserData
	| url response |
	url := (ZnUrl fromString: 'https://api.github.com/user')
		queryAt: 'access_token' put: self accessToken;
		yourself.
	response := ZnClient new get: url.
	^ NeoJSONReader fromString: response