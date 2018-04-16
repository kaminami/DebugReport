outputting
outputInstValFrame
	self
		output: [:aStream | self outputInstValFrameOn: aStream]
		as: 'instValFrame.html'
