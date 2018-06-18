accessing
renderContentOn: html
	html tbsNavItem 
		style: 'display: inline-block' ;
		class: 'footer-element';
		with: [ html anchor url: url; with: element ]