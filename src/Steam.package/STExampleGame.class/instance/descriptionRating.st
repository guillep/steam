descriptions
descriptionRating
	<magritteDescription>
	^ MASingleOptionDescription new
		priority: 30;
		label: 'Rating';
		accessor: #rating;
		options: (1 to: 10);
		comment: 'Game''s rating';
		componentClass: TBSMagritteSelectListComponent;
		beRequired;
		yourself