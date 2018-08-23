initialization
setUp
	super setUp.
	app := STExampleApp new.
	store := STPostgresSQLStore
		on: app
		username: 'username'
		password: 'secret'
		host: 'localhost'
		port: 1234
		database: 'database'.
	app store: store.
	article := (STExampleArticle onSteamApplication: app) date: '22 may 2018' asDate; title: 'Test'; content: 'blablabla.'; email: 'an_email@example.com'.
	gameCat := (STGameCategory onSteamApplication: app) title: 'Test Category'.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10.
	[store session 
		login;
		createTables;
		logout] on: Exception do: [ ^ nil ]