descriptions
descriptionRating
	<magritteDescription>
	^ MANumberDescription new
		priority: 30;
		label: 'Rating';
		accessor: #rating;
		comment: 'Game''s rating';
		min: 1;
		max: 10;
		beRequired;
		beSearchField;
		yourself