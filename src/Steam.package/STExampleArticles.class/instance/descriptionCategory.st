descriptions
descriptionCategory
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category';
		accessor: #category;
		priority: 20;
		beSearchField;
		beRequired;
		componentClass: TBSMagritteTextInputComponent;
		yourself