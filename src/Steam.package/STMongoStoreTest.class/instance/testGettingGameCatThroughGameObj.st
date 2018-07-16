tests
testGettingGameCatThroughGameObj
	| extractedCollection |
	store save: gameCat.
	store save: game.
	extractedCollection := store query: game class with: game title.
	self assert: extractedCollection first category equals: gameCat.
	store delete: game;
		delete: gameCat