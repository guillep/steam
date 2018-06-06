initialization
initialize
	super initialize.
	logins := OrderedCollection new.
	main := STPage appComponent: self.
	store := STMemoryStore on: self.