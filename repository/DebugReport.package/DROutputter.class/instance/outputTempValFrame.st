outputting
outputTempValFrame
	self
		output: [:aStream | self outputTempValFrameOn: aStream]
		as: 'tempValFrame.html'