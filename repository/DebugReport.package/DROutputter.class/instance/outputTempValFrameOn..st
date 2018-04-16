outputting to stream
outputTempValFrameOn: aStream
	
	^ aStream nextPutAll: self class tempValFrameTemplate

