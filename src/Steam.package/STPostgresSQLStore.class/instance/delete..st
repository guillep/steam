storing
delete: anObject

	self currentSession inUnitOfWorkDo: [ 
		self currentSession delete: anObject ].