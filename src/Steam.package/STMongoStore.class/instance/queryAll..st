querying
queryAll: aClass
	
	^ aClass selectAll do: [ :e | e steamApplication: appComponent ]