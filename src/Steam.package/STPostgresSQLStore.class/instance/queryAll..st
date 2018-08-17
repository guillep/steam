querying
queryAll: aClass

	| res |
	res := self currentSession read: aClass.
	res do: [ :each | each steamApplication: appComponent ].
	^ res