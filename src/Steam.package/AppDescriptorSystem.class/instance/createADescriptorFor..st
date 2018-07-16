initialization
createADescriptorFor: class
	self class compile: (('descriptorFor{1}: aDescriptor
	' format: {class asString}), 'aDescriptor table: (self tableNamed: ''' ,class asString asUppercase ,''').
	', class instanceVariables asString , ' do: [:each|
		aDescriptor directMappingFor: each.]')