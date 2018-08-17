initialization
initializeClassModel: aClassModel

	aClassModel describedClass basicNew magritteDescription children do: [ :each | 
			each initializeInGlorpClassModel: aClassModel ]