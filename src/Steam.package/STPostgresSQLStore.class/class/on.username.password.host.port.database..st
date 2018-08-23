private protocol
on: anApplication username: anUsername password: aPassword host: aHost port: aPort database: aDatabase

	^ self basicNew
		appComponent: anApplication;
		username: anUsername;
		password: aPassword;
		host: aHost;
		port: aPort;
		database: aDatabase;
		initialize;
		yourself