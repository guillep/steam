querying
query: aClass with: aString

	| res |
	res := self currentSession read: aClass where: [ :each | each title asUppercase similarTo: '%',aString asUppercase,'%' ] .
	res do: [ :each | each steamApplication: appComponent ].
	^ res