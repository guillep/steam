initialization
createAClassModelFor: class
	self class compile: (('classModelFor{1}: aClassModel
	' format: {class asString}), class instanceVariables asString , ' do: [ :each |
		aClassModel newAttributeNamed: each ]')