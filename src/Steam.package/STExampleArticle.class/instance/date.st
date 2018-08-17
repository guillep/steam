accessing
date
	"When the date is saved in Mongo it may be convert to an DateAndTime object so we have to convert it back to Date"
	
	^ date ifNil: [ date ] ifNotNil: [ date asDate ]