instance creation
from: aComponent appComponent: anApplication

	^ (self appComponent: anApplication)
		component: aComponent;
		yourself