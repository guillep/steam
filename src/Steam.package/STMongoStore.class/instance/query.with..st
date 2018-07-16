querying
query: aClass with: aString 
	| regex |
	regex := ''.
	aString do: [ :e | regex := regex, '[', e asString asLowercase ,'|', e asString asUppercase, ']' ].
	^ (aClass selectMany: [ :each | each title matchesRegex: regex ] ) do: [ :e | e steamApplication: appComponent  ]