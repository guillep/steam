accessing
initializeTable: aTable
	| desbribedClass |

	desbribedClass := aTable classModel describedClass.
	desbribedClass basicNew magritteDescription childrenDo: [ :each |
		aTable
			createFieldNamed: each name
			type: (platform text) ]