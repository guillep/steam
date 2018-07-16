initialization
initialize
	super initialize.
	elements := OrderedCollection new.
"	elements add: (STFooterElementComponent element: STLogoComponent new)."
	elements add: (STFooterElementComponent element: 'Home' url: '#').
	elements add: (STFooterElementComponent element: 'Profile' url: 'https://guillep.github.io/').
	elements add: (STFooterElementComponent element: 'About').
	elements add: (STFooterElementComponent element: 'Example').

	