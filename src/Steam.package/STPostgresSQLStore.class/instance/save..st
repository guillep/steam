storing
save: anObject
	
	session login.
	session inUnitOfWorkDo: [ 
		session register: anObject ].
	session logout.
	