outputting
outputHtmlReportWith: timeStampOrDateAndTime
	| outputter |

	outputter := DRSettings outputterClass on: reportParts.
	outputter timeStamp: timeStampOrDateAndTime.
	outputter label: label.

	[outputter output]
		forkAt: Processor userBackgroundPriority