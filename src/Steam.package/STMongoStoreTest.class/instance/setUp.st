initialization
setUp
	| app |
	app := STMongoStore createAppWithClass: STExampleApp.
	store := app store.
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10