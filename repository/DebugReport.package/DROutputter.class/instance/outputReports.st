outputting
outputReports
	self reportParts do: [:part |
		self
			output: [:aStream | self outputReportOn: aStream]
			as: part index asString , '/report.html'
	].
