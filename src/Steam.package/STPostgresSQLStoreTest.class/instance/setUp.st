initialization
setUp
	super setUp.
	app := STPostgresSQLStore createAppWithClass: STExampleApp.
	store := app store.
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