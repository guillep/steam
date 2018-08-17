accessing
tags: aCollection
	tags := OrderedCollection new.
	aCollection do: [ :e | tags add: e ]