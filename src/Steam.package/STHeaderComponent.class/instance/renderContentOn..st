rendering
renderContentOn: html
	html render: (STAuthentificationComponent from: self appComponent: appComponent).
	html tbsNavbar beDefault with: [
		html tbsNavbarHeader: [ 
			html anchor url: '#'; with: [ logo renderContentOn: html ].
			html tbsNavbarBrand
				url: '#';
				with: 	appComponent title].
		html form: [
			html tbsNavbarText tbsPullRight;
			with: [ self renderSignInOn: html ] ] ]