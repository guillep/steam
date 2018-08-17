storing
update: anObject
	self currentSession inUnitOfWorkDo: [ self currentSession save: anObject ].