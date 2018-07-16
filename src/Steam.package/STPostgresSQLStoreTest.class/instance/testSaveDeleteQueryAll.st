tests
testSaveDeleteQueryAll
	| nbCat |
	nbCat := (store queryAll: gameCat class) size.

	store save: gameCat.
	self assert: (store queryAll: gameCat class) size equals: nbCat + 1.

	store delete: gameCat.
	self assert: (store queryAll: gameCat class) size equals: nbCat
	