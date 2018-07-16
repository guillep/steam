converting
convertToDatabaseTitle: title type: type
	| stringResult |
	stringResult := '	aTable createFieldNamed: ''', title, ''' type: (platform '.
	type = MAMemoDescription ifTrue: [ stringResult := stringResult, 'text' ] ifFalse: [ 
		type = MADateDescription ifTrue: [ stringResult := stringResult, 'date' ] ifFalse: [ 
			type = MANumberDescription ifTrue: [ stringResult := stringResult, 'float' ] ifFalse: [ stringResult := stringResult, 'varchar: 250' ] ] ].
	stringResult := stringResult, ').
'.
	^ stringResult 
