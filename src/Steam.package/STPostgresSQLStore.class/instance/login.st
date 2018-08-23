initialization
login

	^ Login new
		database: PostgreSQLPlatform new;
		username: username;
		password: password;
		connectString: host, ':', port asString, '_', database;
		encodingStrategy: #utf8.