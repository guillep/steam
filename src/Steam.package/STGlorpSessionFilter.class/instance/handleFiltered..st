processing
handleFiltered: aRequestContext 
	"Pass on the aRequestContext to the next filter or handler. Subclasses might override this method to customize the request and response handling."

	self beginSession.
	[super handleFiltered: aRequestContext]
		ensure: [ self closeSession ]