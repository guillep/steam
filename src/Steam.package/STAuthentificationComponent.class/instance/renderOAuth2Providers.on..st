rendering
renderOAuth2Providers: aCallbackUrl on: html

	html anchor
		callback: [ self signOnUsingOAuth2Google: aCallbackUrl ] ;
		with: [ 
			html tbsImage 
				width: 180;
				url: 'http://www.kthotelsgate.com/assets/theme_dark/images/sign-in-button.png' ].

	html anchor
		callback: [ self signOnUsingOAuth2Github: aCallbackUrl ] ;
		with: [ 
			html tbsImage 
				width: 180;
				url: 'https://mattstauffer.com/assets/images/content/Screen-Shot-2015-07-16-at-1.45.52-PM.png' ].