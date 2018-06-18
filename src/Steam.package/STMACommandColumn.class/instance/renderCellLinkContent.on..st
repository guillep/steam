rendering
renderCellLinkContent: anObject on: html
	self commands
		do: [ :each |
			html anchor
				callback: [ each key value: anObject ];
				with: [ html tbsGlyphIcon perform: each value ] ]
		separatedBy: [ html space ]