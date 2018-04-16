outputting to stream
outputTempVarListOn: aStream index: anInteger
	| list part |
	part := self reportParts at: anInteger.

	list := String streamContents: [:str |
		part tempVars do: [:association |
			| varName |
			varName := association key.

			str nextPutAll: '<li><a href="tempVal/'.
			str nextPutAll: varName.
			str nextPutAll: '.html" target="tempValFrame">'.
			str nextPutAll: varName.
			str nextPutAll: '</li>'.
			str nextPut: Character cr.
		].
	].

	^ aStream nextPutAll: (self class tempVarListTemplate format: {list.})

