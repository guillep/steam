accessing
appComponent: anApplication platform: aPlatform

	^ self basicNew
		appComponent: anApplication;
		platform: aPlatform;
		initialize;
		yourself