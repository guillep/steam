descriptions
mongoId
	"this is here to tell mongo to ignore the id attribute"
	<mongoDescription>
	^ VOTransientDescription new
		attributeName: 'id';
		yourself