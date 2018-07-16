example
fillDBWithExamples

	| actionCategory sportsCategory combatCategory adventureCategory |
	
	{actionCategory := (STGameCategory onSteamApplication: self)
		title: 'Action';
		yourself.
	sportsCategory := (STGameCategory onSteamApplication: self)
		title: 'Sports';
		yourself.
	combatCategory := (STGameCategory onSteamApplication: self)
		title: 'Fighting';
		yourself.
	adventureCategory := (STGameCategory onSteamApplication: self)
		title: 'Adventure';
		yourself.} do: [ :each | self save: each ].
	
	"Adding some Games for example :"
	{(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Metal Gear 2';
		rating: 5.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Grid 2';
		rating: 10.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Rocket League';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: combatCategory;
		title: 'Street Fighter';
		rating: 8.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Need for speed';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: sportsCategory;
		title: 'Pro Evolution Soccer ''18';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: adventureCategory;
		title: 'Dark Souls';
		rating: 9.
	(STExampleGame onSteamApplication: self)
		category: adventureCategory;
		title: 'Minecraft';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Fortnite';
		rating: 8.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Overwatch';
		rating: 7.
	(STExampleGame onSteamApplication: self)
		category: actionCategory;
		title: 'Portal';
		rating: 9.

	(STExampleArticle onSteamApplication: self)
		date: '22 may 2018' asDate;
		title: 'Digital Trends Top Games of E3 2018';
		content: 'Every year, video game publishers gather to showcase the biggest, best, and brightest games that we’ll play in the coming year and beyond. In 2018, Digital Trends saw a ton of hot new titles we’re excited to enjoy, and that we hope will change the way we see, think, and play games forever.

From a game that helps everyone make the transition from gamer to world builder, to a controller that will open doors and make it possible for more of us to play, we were wowed by developers’ capacity and eagerness to grow the gaming community.';
		category: 'Game news';
		email: 'an_email@example.com'.
	(STExampleArticle onSteamApplication: self)
		date: '14 jun 2018' asDate;
		title: 'Immigration rules to be relaxed for non-EU doctors and nurses';
		content: 'The government is to relax immigration rules to allow more non-EU skilled workers into the UK.
On Friday, the Home Office is expected to confirm that foreign doctors and nurses will be excluded from the government''s visa cap.
The cap - introduced by Theresa May when she was home secretary - sets a limit for all non-EU skilled workers at 20,700 people a year.
There have been warnings it makes it hard to fill vacancies in the NHS.
Labour said the expected announcement was a "welcome U-turn", and NHS bosses said it would be a "huge relief" to health trusts.';
		category: 'Politics';
		email: 'yourpics@bbc.co.uk'.} do: [ :e | self save: e ]