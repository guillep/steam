descriptions
descriptionCategory
	<magritteDescription>
	^ MAStringDescription new
		label: 'Category';
		accessor: #category;
		priority: 20;
		beSearchField;
		beRequired;
		requiredErrorMessage: 'An article must be categorized.';
		componentClass: TBSMagritteTextInputComponent;
		yourself