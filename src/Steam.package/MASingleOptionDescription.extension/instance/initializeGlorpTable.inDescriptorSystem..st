*Steam-store
initializeGlorpTable: aDatabaseTable inDescriptorSystem: aSTDescriptorSystem 

	aDatabaseTable
		addForeignKeyFrom: (aDatabaseTable createFieldNamed: self accessor readSelector , '_ID_FK' type: aSTDescriptorSystem platform int4) 
		to: ((aSTDescriptorSystem tableNamed: self stObjectClass) fieldNamed: 'id')