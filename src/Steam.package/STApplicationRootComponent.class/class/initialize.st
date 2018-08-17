initialization
initialize
	| app |
	
	self isAbstract ifTrue: [ ^ self ].

	app := WAAdmin register: self asApplicationAt: self applicationName.
	app
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary.
		
	app configuration
		addParent: STZnOAuth2GoogleConfiguration instance;
		addParent: STZnOAuth2GithubConfiguration instance.

	app preferenceAt: #sessionClass put: STSession.
	self oauthHandlers do: [ :handler | handler configureOn: app ].
	self registerCallbackHandlerAt: 'oauth2callback'