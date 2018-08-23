as yet unclassified
on: anApplication host: aHost database: aDatabase

	^ self basicNew
		appComponent: anApplication;
		host: aHost;
		database: aDatabase;
		initialize;
		yourself