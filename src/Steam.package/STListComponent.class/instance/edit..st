actions
edit: anObject

	self call: anObject updateComponent.
	appComponent store class = STMongoStore ifTrue: [ appComponent store save: anObject ]