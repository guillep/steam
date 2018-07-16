initialization
initialize

	super initialize.
	"descriptorSystem := STDescriptorSystem appComponent: appComponent platform: self class login database.
	session := GlorpSession new.
	session accessor: (DatabaseAccessor forLogin: self class login).
	session system: descriptorSystem."
	session := AppDescriptorSystem sessionForLogin: self class login.