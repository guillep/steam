initialization
addTableFor: aClass 

	| newTable |	
	newTable := self databaseTableClass new.
	newTable name: aClass name asUppercase.
	tables at: aClass name asUppercase put: newTable.
	
	aClass basicNew magritteDescription children do: [ :each |
		newTable
			createFieldNamed: each accessor readSelector
			type: (each convertTypeFor: platform) ]