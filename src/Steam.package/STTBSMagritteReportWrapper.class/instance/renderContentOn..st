rendering
renderContentOn: html
	html anchor 
		style: (selection ifEmpty: ['visibility: hidden'] );
		callback: [ self delete ];
		with: [ 
			html div
				style: 'text-align: center';
				class: 'reoprt-actions'; 
				with: [
					self flag: #smell.
					html tbsButton
						beSubmit;
						beDanger;
						beExtraSmall;
						"Why this callback isn't working ?"
						callback: [ self delete ];
						with: [ html tbsGlyphIcon iconTrash ] ] ]