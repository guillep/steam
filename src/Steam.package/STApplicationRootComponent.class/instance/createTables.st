setting up
createTables
	| session |
	(store class = STPostgresSQLStore) ifFalse: [ ^ nil ].
	session := store newSession.
	session login.
	session createTables.
	session logout