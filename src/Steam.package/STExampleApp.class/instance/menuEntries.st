accessing
menuEntries
	
	^ { STListAction
			on: STExampleGame
			title: 'Games'.
			
		STListAction
			on: STExampleArticles
			title: 'Articles'.
		
		STListAction
			on: STGameCategory title: 'Game Categories'.
			
		STSearchAction
			on: (STExampleGameSearch onSteamApplication: self)
			title: 'Search Games'.}