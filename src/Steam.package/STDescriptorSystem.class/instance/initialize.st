accessing
initialize
	"Initialize is executed after the application is set"

	super initialize.
	appComponent applicationClasses do: [ :class | 
		self addTableFor: class.
		self addClassModelFor: class ]