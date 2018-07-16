initialization
createATableFor: class
	| classInsetance result titleTypeDict |
	classInsetance := class onSteamApplication: STStore new.
	result := ('tableFor{1}: aTable
' format: {class asString asUppercase}).
	result := result, '	(aTable createFieldNamed: ''id'' type: platform serial) bePrimaryKey.

'.
	titleTypeDict := classInsetance instanceVariablesDescriptionType.
	titleTypeDict keys do: [ :k | result := result, (self convertToDatabaseTitle: k type: (titleTypeDict at: k)) ].
	
	self class compile: result