initialization
setUp
	| app |
	super setUp.
	app := STExampleApp new.
	store := STMongoStore on: app host: 'localhost' database: 'steam'.
	app store: store.
	store repository: (VOMongoRepository
		host: 'localhost'
		database: 'steam_test').
	
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	gameCat2 := (STGameCategory onSteamApplication: app)
		title: 'Second Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10