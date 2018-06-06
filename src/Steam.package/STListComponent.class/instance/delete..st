actions
delete: anObject
	(self confirmError: ('Do you want remove this {1} ?' format: { anObject asString }))
		ifTrue: [ appComponent delete: anObject ]