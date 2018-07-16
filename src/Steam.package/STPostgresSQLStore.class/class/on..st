instance creation
on: anApp
	^ self basicNew
		appComponent: anApp;
		initialize;
		yourself