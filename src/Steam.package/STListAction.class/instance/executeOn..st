executing
executeOn: anApplication

	anApplication show: (STListComponent
		appComponent: anApplication
		listAccessor: listAccessor)