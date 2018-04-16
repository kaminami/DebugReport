outputting to stream
outputStackCodeOn: aStream index: anInteger

	| part |
	part := self reportParts at: anInteger.
	^ aStream nextPutAll: (self class stackCodeTemplate format: {part sourceTextHtml})

