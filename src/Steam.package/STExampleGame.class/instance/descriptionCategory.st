descriptions
descriptionCategory
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Category';
		accessor: #category;
		priority: 20;
		options: (steamApplication queryAll: STGameCategory);
		comment: 'Select a category';
		beSorted;
		componentClass: TBSMagritteSelectListComponent;
"		addCondition: [ :v | v isNotNil ] labelled: 'You have to create a new category';"
		beRequired;
		yourself