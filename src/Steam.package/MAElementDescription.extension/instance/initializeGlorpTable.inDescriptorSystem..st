*Steam-store
initializeGlorpTable: aDatabaseTable inDescriptorSystem: aSTDescriptorSystem 

	aDatabaseTable
		createFieldNamed: self accessor readSelector
		type: (self convertTypeFor: aSTDescriptorSystem platform)