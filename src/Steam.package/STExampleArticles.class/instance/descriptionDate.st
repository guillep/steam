descriptions
descriptionDate
	<magritteDescription>
	^ MADateDescription new
		label: 'Date';
		accessor: #date;
		priority: 40;
		"the day shoud not be beyond today"
		addCondition: [ :value | value <= Date today ] labelled: 'You can select only today''s day or an ulterior day';
		"only days of working week, not weekends"
		addCondition: [ :v | ((v dayOfWeek = 7) | (v dayOfWeek = 1)) not ] labelled: 'Please select a working day.';
		beRequired;
		beSearchField;
		yourself