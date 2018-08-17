initialization
initialize
	"self initialize"

	super initialize.
	
	"Here you can choose your login object"
	login := STBasicLogin on: self.
	
	"Here you can define your application menu"
	menuEntries := { 
		STListAction on: STExampleGame title: 'Games'.
		STListAction on: STGameCategory title: 'Game Categories'.
		STListAction on: STExampleArticle title: 'Articles'.
		STListAction on: STArticleTag title: 'Articles Tags'.
		STSearchAction on: (STExampleGameSearch onSteamApplication: self) title: 'Search Games' }
	"self fillDBWithExamples"