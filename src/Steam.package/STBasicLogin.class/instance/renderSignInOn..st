rendering
renderSignInOn: html
	self isLogged
		ifFalse: [ html html: '<a data-toggle="modal" href="#myAuthDialog" class="btn"><span class="glyphicon glyphicon-lock"></span> Sign In</a>' ]
		ifTrue: [ html tbsButtonGroup
				tbsPullRight;
				with: [ html tbsDropdownButton
						beDefault;
						with: [ application session userInfos isNotNil
								ifTrue: [ html image
										width: 30;
										url: application session userInfos userPicture ]
								ifFalse: [ html tbsGlyphIcon iconUser ].
							html space.
							html text: self currentUserName.
							html space.
							html tbsCaret ].
					html tbsDropdownMenu
						with: [ html
								tbsDropdownMenuItem: [ html anchor
										callback: [ application gotoUserPage ];
										with: 'Settings' ].
							html
								tbsDropdownMenuItem: [ html anchor
										callback: [ self logout ];
										with: 'Log out' ] ] ] ]