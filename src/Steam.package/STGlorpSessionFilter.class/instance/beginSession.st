session management
beginSession
	
	| newGlorpSession seasideSession |
	newGlorpSession := application store newSession.
	seasideSession := self session.
	seasideSession properties at: #glorpSession put: newGlorpSession.
	newGlorpSession login