rendering
report
	| description checkbox |
	report ifNotNil: [ ^ report ].
	report := TBSMagritteReport rows: self elements.
	report showStriped: true.
	report showBordered: false.
	report tableEmpty: 'No ' , self listAccessor title.
	report showBatchFirstLast: true.
	report showHover: true.
"	report batchSize: 5."

	self isLoggedIn
		ifTrue: [ report addColumn: (checkbox := STMACheckboxColumn new accessor: #isSelected) ].

	description := (self listAccessor instanceMagritteDescriptionOnApplication: appComponent) select: #visibleInReport.
	description asContainer do: [ :each | report addColumnDescription: each ].

	self isLoggedIn
		ifTrue: [ report
				addColumn:
					(STMACommandColumn new
						addCommandOn: self selector: #view: text: #iconInfo "iconExpand ?";
						addCommandOn: self selector: #edit: text: #iconPencil;
						addCommandOn: self selector: #delete: text: #iconTrash;
						yourself).
			checkbox label:( wrapper
				appComponent: appComponent;
				selection: report columns first selection;
				report: report;
				yourself )].
	^ report