running
tearDown
	self assert: (store query: game class with: game title) size equals: 0.
	self assert: (store query: gameCat class with: gameCat title) size equals: 0