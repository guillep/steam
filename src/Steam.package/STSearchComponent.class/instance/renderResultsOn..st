rendering
renderResultsOn: html

	| searchResultFields |
	searchResultFields := self model magritteDescription children
		select: [ :each | each isSearchResult ].
	
	html heading
		level: 2;
		with: 'Results'.

	searchResultFields do: [ :each | | resultObject component |
		resultObject := self model readUsing: each.
		component := resultObject isCollection
			ifTrue: [ | report |
				report := TBSMagritteReport rows: resultObject.
				resultObject ifNotEmpty: [
					resultObject anyOne magritteDescription asContainer do: [ :column |
						report addColumnDescription: column ] ].
				report showStriped: true.
				report showBordered: false.
				report tableEmpty: 'No Results Found'.
				report ]
			ifFalse: [ resultObject detailsComponent ].
		html render: component
	]