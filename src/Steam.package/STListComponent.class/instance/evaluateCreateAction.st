actions
evaluateCreateAction

	| newObject |
	newObject := self call: (self renderCreateForm: (self listAccessor onSteamApplication: appComponent)).
	newObject ifNotNil: [ 
		appComponent save: newObject ].