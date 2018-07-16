accessing
allTableNames
	| result |
	result := OrderedCollection new.
	STObject allSubclasses do: [ :e |
		|title|
		title := e asString asUppercase.
		(title includesSubstring: 'SEARCH') ifFalse: [ result add: title ].].
	^ result asArray