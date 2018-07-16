initialization
initialize
	super initialize.
	logins := OrderedCollection new.
	main := STPage appComponent: self.
	self storeInitialization