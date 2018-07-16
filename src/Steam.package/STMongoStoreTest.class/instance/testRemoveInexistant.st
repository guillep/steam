tests
testRemoveInexistant
	self assert: (store query: gameCat class with: gameCat title) size equals: 0.
	store delete: gameCat.
	self assert: (store query: gameCat class with: gameCat title) size equals: 0
	