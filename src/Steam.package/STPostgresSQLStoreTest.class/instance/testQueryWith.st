tests
testQueryWith
	| extractedCollection |
	self assert: (store query: gameCat class with: gameCat title) size equals: 0.
	store save: gameCat.
	self assert: (extractedCollection := store query: gameCat class with: gameCat title) size equals: 1.
	self assert: extractedCollection first equals: gameCat.
	store delete: gameCat.
	self assert: (store query: gameCat class with: gameCat title) size equals: 0