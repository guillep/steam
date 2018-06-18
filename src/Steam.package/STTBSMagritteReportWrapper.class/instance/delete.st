initialize-release
delete

	self selection do: [ :each | appComponent delete: each ].
	self refresh