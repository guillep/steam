initialization
initialize

	super initialize.
	descriptorSystem := STDescriptorSystem appComponent: appComponent platform: self class login database.
	self newSession