descriptions
instanceVariablesDescriptionType
	| res |
	res := Dictionary new.
	self magritteDescription children do: [ :e | res at: e label asLowercase put: e ].
	^ res