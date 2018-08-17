execution
renderOn: component column: aColumn
	aColumn
		addCommandOn: [ :selectedObject | selectedObject perform: self selector ]
		selector: #value:
		text: self iconName