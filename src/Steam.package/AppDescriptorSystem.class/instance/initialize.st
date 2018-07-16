initialization
initialize
	| classes |
	super initialize.
	classes := OrderedCollection new.
	STObject allSubclasses do: [ :e |
		|title|
		title := e asString asUppercase.
		(title includesSubstring: 'SEARCH') ifFalse: [ classes add: e ].].
	
	classes do: [ :class | 
		self createAClassModelFor: class.
		self createADescriptorFor: class.
		self createATableFor: class ]