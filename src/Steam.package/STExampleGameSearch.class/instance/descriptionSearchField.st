acessing-magritte
descriptionSearchField
	<magritteDescription>
	^ MAStringDescription new
		accessor: #searchValue;
		beSearchField;
		comment: 'Search for games';
		beRequired;
		yourself