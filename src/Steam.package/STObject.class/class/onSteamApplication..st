instance creation
onSteamApplication: aSteamApplication 
	
	^ self basicNew
		steamApplication: aSteamApplication;
		initialize;
		yourself