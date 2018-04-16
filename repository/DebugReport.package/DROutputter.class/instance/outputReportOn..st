outputting to stream
outputReportOn: aStream
	
	^ aStream nextPutAll: (self class reportTemplate format: {self label})

