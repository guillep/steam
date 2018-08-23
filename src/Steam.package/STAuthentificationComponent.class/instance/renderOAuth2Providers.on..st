rendering
renderOAuth2Providers: aCallbackUrl on: html

	appComponent oauthHandlers do: [ :each |
		each renderSignInOn: self inHtml: html withCallbackUrl: aCallbackUrl ]