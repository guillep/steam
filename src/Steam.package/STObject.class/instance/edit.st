actions
edit
	| listComponent |
	listComponent := steamApplication main component.
	listComponent call: self updateComponent.
	steamApplication store update: self