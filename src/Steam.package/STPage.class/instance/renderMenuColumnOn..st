rendering
renderMenuColumnOn: html
	
	html tbsColumn
		extraSmallSize: 12;
		smallSize: 2;
		mediumSize: 4;
		with: [ html render: (STMenuComponent appComponent: appComponent) ]