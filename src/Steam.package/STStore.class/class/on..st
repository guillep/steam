instance creation
on: anApplication
	self isAbstract 
		ifTrue: [ 
			self error: 'Please select one of it''s subclasses : ', self subclasses asString , ' in your app initialization' ]
		ifFalse: [ 
			^ self new 
				appComponent: anApplication; 
				yourself ]