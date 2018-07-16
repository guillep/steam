querying
query: aClass with: aString 
	^ (self queryAll: aClass) select: [ :each | each title asUppercase includesSubstring: aString asUppercase ]