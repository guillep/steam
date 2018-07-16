instance creation
createAppWithClass: anAppClass
	| app |
	self isAbstract ifTrue: [ 
		self error: 'Please select one of it''s subclasses : ', self subclasses asString , ' in order to create the app' ]
	ifFalse: [ 
		app := anAppClass new.
		app store: (self on: app).
		^ app ]