initialization
setUp
	| app |
	app := STExampleApp new.
	store := app store: (STMongoStore on: app).
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10