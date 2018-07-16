querying
query: aClass with: aString

	| res |
	session login.
	res := session read: aClass where: [ :each | each title asUppercase similarTo: '%',aString asUppercase,'%' ] .
	res do: [ :each | each steamApplication: appComponent ].
	session logout.
	^ res