initialization
setUp

	| app |
	super setUp.
	app := STMemoryStore createAppWithClass: STExampleApp.
	store := app store.
	store initialize.
	
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10