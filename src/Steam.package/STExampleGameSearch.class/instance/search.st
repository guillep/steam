initializing
search
	results := (steamApplication queryAll: STExampleGame)
		select: [ :each | each title asUppercase includesSubstring: searchValue asUppercase ]