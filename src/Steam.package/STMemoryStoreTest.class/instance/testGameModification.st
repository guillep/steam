tests
testGameModification
	| extractedCollection |
	game rating: 10.
	store save: game.
	extractedCollection := store query: game class with: game title.
	self assert: extractedCollection first rating equals: 10.
	game rating: 5.
	extractedCollection := store query: game class with: game title.
	self assert: extractedCollection first rating equals: 5.
	store delete: extractedCollection first	;
		delete: gameCat