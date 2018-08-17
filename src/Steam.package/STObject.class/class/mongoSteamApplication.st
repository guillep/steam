descriptions
mongoSteamApplication
	"this is here to tell mongo to ignore the steamApplication attribute"
	<mongoDescription>
	^ VOTransientDescription new
		attributeName: 'steamApplication';
		yourself