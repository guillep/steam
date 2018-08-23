initialization
newSession
	"A new Glorp session is created every new Seaside session"
	session := GlorpSession new.
	session accessor: (DatabaseAccessor forLogin: self login).
	session system: descriptorSystem.
	session login.
	^ session