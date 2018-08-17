actions
delete
	| listComponent |
	listComponent := steamApplication main component.
	(listComponent confirmError: ('Do you want remove this {1} ?' format: { self asString }))
		ifTrue: [ steamApplication delete: self.
			listComponent refresh ]