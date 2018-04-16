private
replaceWhiteSpaces: aString 
	| result |
	result := aString.
	result := result copyReplaceAll: Character space asString with: '&nbsp;'.
	result := result copyReplaceAll: Character tab asString with: '&nbsp;&nbsp;&nbsp;&nbsp;'.
	^ result