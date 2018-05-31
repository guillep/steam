accessing
userName
	| name |
	name := infos at: 'name'.
	name isNil ifTrue:[ ^ self userLogin ] ifFalse: [ ^ name ]