descriptions
descriptionEmail
	<magritteDescription>
	^ MAStringDescription new
		label: 'Email';
		accessor: #email;
		priority: 35;
		addCondition: [ :v | v matchesRegex: '^[a-zA-Z0-9_.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-.]+'] labelled: 'Please enter a correct email.';
		componentClass: TBSMagritteTextInputComponent;
		yourself