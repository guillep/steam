storing
save: anObject
	
	(store at: anObject class ifAbsentPut: [ OrderedCollection new ])
		add: anObject