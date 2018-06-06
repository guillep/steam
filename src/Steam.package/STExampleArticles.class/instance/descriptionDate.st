descriptions
descriptionDate
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		addCondition: [ :value | value <= Date today ];
		beSearchField;
		yourself