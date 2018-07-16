initialization
initialize
	| repository |

	repository := VOMongoRepository
		host: 'localhost'
		database: 'steam'.
	repository enableSingleton