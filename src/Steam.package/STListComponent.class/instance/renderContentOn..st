rendering
renderContentOn: html
	html heading: self listAccessor title.

	(self isLoggedIn and: [ self isReadOnly not ]) ifTrue: [
		html form: [	
			html tbsButton 
					bePrimary;
					beSubmit;
					callback: [ self evaluateCreateAction ];
					with: [
						html tbsGlyphIcon iconPencil.
						html text: self createActionTitle ] ] ].

	html break.
	html render: self report