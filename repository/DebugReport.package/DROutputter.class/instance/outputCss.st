outputting
outputCss
	self
		output: [:aStream | self outputCssOn: aStream]
		as: 'DebugReport.css'
