*Steam-store
initializeGlorpDescriptor: aDescriptor inDescriptorSystem: aSTDescriptorSystem 
	
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: self accessor readSelector;
		referenceClass: self stObjectClass