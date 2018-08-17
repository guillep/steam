tests
testSaveTwoObjects
	| nbgameCats query |
	nbgameCats := (store queryAll: gameCat class) size.
	store save: gameCat.
	store save: gameCat2.

	query := store queryAll: gameCat class.
	self assert: query size equals: nbgameCats + 2.
	self assert: (query includes: gameCat).
	self assert: (query includes: gameCat2).

	store delete: gameCat.
	store delete: gameCat2.

	self assert: (store queryAll: gameCat class) size equals: nbgameCats
	