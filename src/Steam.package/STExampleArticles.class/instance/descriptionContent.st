descriptions
descriptionContent
	<magritteDescription>
	^ MAMemoDescription new
		label: 'Content';
		accessor: #content;
		priority: 30;
		beRequired;
		requiredErrorMessage: 'An article must contain a text.';
		componentClass: TBSMagritteTextAreaComponent;
		yourself