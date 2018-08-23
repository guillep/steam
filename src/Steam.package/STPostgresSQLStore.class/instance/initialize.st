initialization
initialize

	super initialize.
	descriptorSystem := STDescriptorSystem appComponent: appComponent platform: self login database.
	self newSession