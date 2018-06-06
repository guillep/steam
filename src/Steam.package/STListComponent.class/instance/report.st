rendering
report
	report ifNotNil: [ ^ report ].
	
	report := TBSMagritteReport
		rows: self elements
		description: ((self listAccessor instanceMagritteDescriptionOnApplication: appComponent) select: #visibleInReport).
	report showStriped: true.
	report showBordered: false.
	report tableEmpty: 'No ' , self listAccessor title.
	report showBatchFirstLast: true.
	self isLoggedIn
		ifTrue: [ report
				addColumn:
					(MACommandColumn new
						addCommandOn: self selector: #view: text: 'View';
						addCommandOn: self selector: #edit: text: 'Edit';
						addCommandOn: self selector: #delete: text: 'Delete';
						yourself).
			report addColumn: (MACheckboxColumn new accessor: #isSelected) ].
	^ report