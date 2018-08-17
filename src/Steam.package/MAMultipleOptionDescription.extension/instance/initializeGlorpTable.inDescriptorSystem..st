*Steam-store
initializeGlorpTable: aDatabaseTable inDescriptorSystem: aSTDescriptorSystem 

	| inverseTable |
	inverseTable := aSTDescriptorSystem tableNamed: self stObjectClass name.
	inverseTable
		addForeignKeyFrom: (inverseTable createFieldNamed: aDatabaseTable name, '_ID_FK' type: aSTDescriptorSystem platform int4) 
		to: (aDatabaseTable fieldNamed: 'id')