descriptions
descriptionTags
	<magritteDescription>
	^ MAMultipleOptionDescription new
		label: 'Tags';
		accessor: #tags;
		priority: 20;
		beSearchField;
		"On initialization this code is executed before the creation of the database so the query will throw an exception"
		options: ([steamApplication queryAll: STArticleTag] on: Error do: [ nil ] );
		componentClass: MAMultiselectListComponent;
		propertyAt: #STObjectClass put: STArticleTag;
		yourself