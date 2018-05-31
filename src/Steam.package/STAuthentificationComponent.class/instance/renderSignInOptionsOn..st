rendering
renderSignInOptionsOn: html

	| callback url tmp |

	callback := WAActionCallback on: [ self handleCallback ] .
	url := html actionUrl copy addField: (html callbacks store: callback).

	"VERY UGLY PATCH, HAS TO BE CHANGED
	the request uri scheme is 'nil' instead of (the object) nil"
	self flag: #smell.
	tmp := self requestContext request.
	tmp uri scheme: nil.
	url takeServerParametersFromRequest: tmp. 

	self renderOAuth2Providers: url on: html.

	