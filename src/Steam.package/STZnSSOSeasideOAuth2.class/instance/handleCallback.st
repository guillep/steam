actions
handleCallback
	"This method is invoked when the SSO provider redirects back to this application." 

	oauthSession handleAuthenticationCallback: self requestContext request fields.
	userData := oauthSession getUserData.
	self session userInfos: (STSSOUserInfos with: oauthSession infos: userData).
	appComponent login loginUsername: (self session userInfos userName) password: ''.
	appComponent refresh