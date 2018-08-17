tests
testArticleModification
	| extractedCollection |
	article title: 'title1'.
	store save: article.
	extractedCollection := store query: article class with: 'title1'.
	self assert: extractedCollection size equals: 1.
	self assert: extractedCollection first title equals: 'title1'.
	
	extractedCollection first title: 'title2'.
	store update: extractedCollection first.
	
	extractedCollection := nil.
	
	extractedCollection := store query: article class with: 'title2'.
	self assert: extractedCollection size equals: 1.
	self assert: extractedCollection first title equals: 'title2'.
	
	store delete: extractedCollection first