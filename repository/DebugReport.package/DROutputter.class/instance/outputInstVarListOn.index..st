outputting to stream
outputInstVarListOn: aStream index: anInteger

	| list part |
	part := self reportParts at: anInteger.

	list := String streamContents: [:str |
		part instVars do: [:association |
			| varName |
			varName := association key.

			str nextPutAll: '<li><a href="instVal/'.
			str nextPutAll: varName.
			str nextPutAll: '.html" target="instValFrame">'.
			str nextPutAll: varName.
			str nextPutAll: '</li>'.
			str nextPut: Character cr.
		].
	].

	^ aStream nextPutAll: (self class instVarListTemplate format: {list.})

