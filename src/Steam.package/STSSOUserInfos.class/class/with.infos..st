instance creation
with: anObj infos: infos
	anObj class = STZnGitHubOAuth2Session ifTrue: [ ^ self github: infos ].
	anObj class = STZnGoogleOAuth2Session ifTrue: [ ^ self google: infos ].