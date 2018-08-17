accessing
configureOn: aSeasideApplication

	aSeasideApplication
		preferenceAt: self keyKey put: self key;
		preferenceAt: self secretKey put: self secret;
		preferenceAt: self redirectUrlKey put: self redirectUrl