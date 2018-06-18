components
updateComponent

	^ self asComponent
		addDecoration: (TBSMagritteFormDecoration
			buttons: { 
				#save -> self class createAction acceptTitle.
				#cancel -> self class createAction cancelTitle });
		addDecoration: TBSMagritteValidationDecoration new;
		yourself