initialization
setUp

	| app |
	super setUp.
	app := STExampleApp new.
	store := STMemoryStore on: app.
	app store: store.
	
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10