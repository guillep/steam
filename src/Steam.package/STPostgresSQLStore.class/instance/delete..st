storing
delete: anObject

	session login.
	session inUnitOfWorkDo: [ 
		session delete: anObject ].
	session logout