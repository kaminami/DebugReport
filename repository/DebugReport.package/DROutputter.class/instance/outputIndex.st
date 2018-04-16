outputting
outputIndex
	self
		output: [:aStream | self outputIndexOn: aStream]
		as: 'index.html'
