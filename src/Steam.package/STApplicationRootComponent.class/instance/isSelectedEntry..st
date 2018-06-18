accessing
isSelectedEntry: anEntry
	^ selectedEntry ifNil: [ false ] ifNotNil: [ selectedEntry = anEntry ]