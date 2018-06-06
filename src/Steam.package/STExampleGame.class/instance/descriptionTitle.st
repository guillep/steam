descriptions
descriptionTitle
	<magritteDescription>
	^ MAStringDescription new
		label: 'Title';
		accessor: #title;
		priority: 200;
		beSearchField;
		beRequired;
		requiredErrorMessage: 'We cannot proceed without a title.';
		yourself