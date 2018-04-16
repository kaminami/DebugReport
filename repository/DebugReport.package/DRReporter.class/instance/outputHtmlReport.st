outputting
outputHtmlReport
	self outputEnabled ifFalse: [ ^ self ].

	self outputHtmlReportWith: DateAndTime now