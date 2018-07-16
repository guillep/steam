rendering
renderContentOn: html
		html tbsColumn class: 'footer'; style: 'position : fixed; bottom: 25px; width : 100%; background-color : whitesmoke'; with: [ 
			html tbsNavbar  with: [
				html tbsNav style: 'text-align: center;' ; class: 'footer-elements-container'; with: [
					elements do: [ :elem | elem renderContentOn: html ]]]].