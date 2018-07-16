private protocol
login
	^ Login new
		database: PostgreSQLPlatform new;
		username: 'pierretsapliayeu';
		password: 'secret';
		connectString: 'localhost:5432_pierretsapliayeu';
		encodingStrategy: #utf8.