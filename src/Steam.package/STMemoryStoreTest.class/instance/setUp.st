initialization
setUp
	| app |
	app := STMemoryStore createAppWithClass: STExampleApp.
	store := app store.
	gameCat := (STGameCategory onSteamApplication: app)
		title: 'Test Category';
		yourself.
	game := (STExampleGame onSteamApplication: app)
		category: gameCat;
		title: 'Test Game';
		rating: 10.
	self assert: (store query: game class with: game title) size equals: 0.
	self assert: (store query: gameCat class with: gameCat title) size equals: 0