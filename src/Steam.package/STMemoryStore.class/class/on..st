instance creation
on: anApplication

	^ self basicNew
		appComponent: anApplication;
		initialize;
		yourself