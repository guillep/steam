initialization
initializeDescriptor: aDescriptor

	| desbribedClass |
	desbribedClass := aDescriptor classModel describedClass.
	aDescriptor table: (self tableNamed: desbribedClass name asUppercase).

	aDescriptor directMappingFor: 'id'.
	desbribedClass basicNew magritteDescription children do: [ :each |
		each initializeGlorpDescriptor: aDescriptor inDescriptorSystem: self ]