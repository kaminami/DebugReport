outputting to stream
outputValueOn: aStream key: keyStr value: valueObj
	^ aStream nextPutAll: (self class valTemplate format: {keyStr. valueObj asHTMLString})