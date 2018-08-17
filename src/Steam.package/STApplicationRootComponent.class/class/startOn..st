public
startOn: portInteger

	self seasideServer: ((ZnZincServerAdaptor port: portInteger) start).
	self initialize