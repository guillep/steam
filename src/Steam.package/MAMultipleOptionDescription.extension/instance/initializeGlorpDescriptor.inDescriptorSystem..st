*Steam-store
initializeGlorpDescriptor: aDescriptor inDescriptorSystem: aSTDescriptorSystem 

	aDescriptor addMapping:
		((OneToManyMapping new)
			attributeName: self accessor readSelector;
			referenceClass: self stObjectClass;
			collectionType: OrderedCollection)