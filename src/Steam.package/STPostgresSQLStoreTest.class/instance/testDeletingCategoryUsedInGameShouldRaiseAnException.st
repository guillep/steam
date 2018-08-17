tests
testDeletingCategoryUsedInGameShouldRaiseAnException
	store save: gameCat.
	store save: game.
	self should: [store delete: gameCat] raise: Error.
	store delete: game;
		delete: gameCat