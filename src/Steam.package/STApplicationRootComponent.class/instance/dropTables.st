setting up
dropTables
	| session |
	(store class = STPostgresSQLStore) ifFalse: [ ^ nil ].
	session := store newSession.
	session login.
	session dropTables.
	session logout