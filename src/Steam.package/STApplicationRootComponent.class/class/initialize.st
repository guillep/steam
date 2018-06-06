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

	app
		preferenceAt: #sessionClass put: STSession;
		
		preferenceAt: #oauth2GoogleClientId put: '268063595494-kmfvlki3hghgad0egmac620seoffn163.apps.googleusercontent.com' ;
		preferenceAt: #oauth2GoogleClientSecret put: 'GQOJLyJBOTpgMFkwKgk-Dz7Y' ;
		preferenceAt: #oauth2GoogleRedirectUrl put: 'http://localhost:8080/oauth2callback';
		
		preferenceAt: #oauth2GithubClientId put: 'e94060c606d435f40a86' ;
		preferenceAt: #oauth2GithubClientSecret put: '130511e35daa0b24aa756bb961b8a966cbda5df8' ;
		preferenceAt: #oauth2GithubRedirectUrl put: 'http://localhost:8080/oauth2callback'.

	self registerCallbackHandlerAt: 'oauth2callback'.