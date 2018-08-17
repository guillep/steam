*Steam-store
stObjectClass

	^ (self propertyAt: #STObjectClass ifAbsent: [ self error: 'You have to define the #STObjectClass property in the description of ', self asString ])