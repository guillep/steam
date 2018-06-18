acessing-magritte
descriptionTitle
	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		priority: 10;
		accessor: #title;
		beSearchField;
		beRequired;
		requiredErrorMessage: 'An article must have a title.';
		componentClass: TBSMagritteTextInputComponent;
		yourself