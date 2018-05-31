rendering
renderOAuth2Providers: aCallbackUrl on: html

	html anchor
		callback: [ self signOnUsingOAuth2Google: aCallbackUrl ] ;
		with: [ 
			html tbsImage 
				width: 180;
				url: 'https://coderwall-assets-0.s3.amazonaws.com/uploads/picture/file/4314/download.png' ].

	html anchor
		callback: [ self signOnUsingOAuth2Github: aCallbackUrl ] ;
		with: [ 
			html tbsImage 
				width: 180;
				url: 'https://coderwall-assets-0.s3.amazonaws.com/uploads/picture/file/4363/github.png' ].