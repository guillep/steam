storing
save: anObject
	self currentSession inUnitOfWorkDo: [ 
		self currentSession register: anObject ].
	