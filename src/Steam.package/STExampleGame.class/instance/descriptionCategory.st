descriptions
descriptionCategory
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Category';
		accessor: #category;
		priority: 20;
		options: ([steamApplication queryAll: STGameCategory] on: Error do: [ ^ nil ] );
		comment: 'Select a category';
		beSorted;
		componentClass: TBSMagritteSelectListComponent;
		requiredErrorMessage: 'You have to create a new category.';
		beRequired;
		beSearchField;
		yourself