descriptions
descriptionTitle
	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		accessor: #title;
		priority: 10;
		beSearchField;
		beRequired;
		requiredErrorMessage: 'We cannot proceed without a title.';
		componentClass: TBSMagritteTextInputComponent;
		yourself