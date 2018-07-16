querying
queryAll: aClass

	| res |
	session login.
	res := session read: aClass.
	res do: [ :each | each steamApplication: appComponent ].
	session logout.
	^ res