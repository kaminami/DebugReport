status
imageVersion
	^ SystemVersion current version asString , ' [' , SmalltalkImage current lastUpdateString asString , ']'