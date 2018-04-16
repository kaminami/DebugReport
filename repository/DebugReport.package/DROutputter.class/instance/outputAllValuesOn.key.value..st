outputting to stream
outputAllValuesOn: aStream key: keyStr value: valueObj
	^ aStream nextPutAll: (self class allValsTemplate format: {keyStr. valueObj asHTMLString})