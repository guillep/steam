description
describeOn: config 

	(config string: #oauth2GithubClientId)
		group: #oauth;
		label: 'Github client_id';
		comment: 'OAuth 2.0 client_id for Github.'.
		
	(config string: #oauth2GithubClientSecret)
		group: #oauth;
		label: 'Github client_secret';
		comment: 'OAuth 2.0 client_secret for Github.'.
		
	(config string: #oauth2GithubRedirectUrl)
		group: #oauth;
		label: 'Github oauth2 redirect_url';
		comment: 'OAuth 2.0 redirect_url for Github.'.	