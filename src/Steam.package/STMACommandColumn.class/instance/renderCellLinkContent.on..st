rendering
renderCellLinkContent: anObject on: html
	self commands
		do: [ :each |
			html anchor
				callback: [ each key value: anObject ];
				with: [ 
					html tbsGlyphIcon 
						title: each key receiver outerContext receiver selector; 
						style: 'margin: 2px'; 
						perform: each value ] ]
		separatedBy: [ html space ]