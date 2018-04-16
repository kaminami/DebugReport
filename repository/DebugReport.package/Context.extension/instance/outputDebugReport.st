*DebugReport
outputDebugReport
	| label |
	label := thisContext sender printString.
	(DRReporter context: self label: label) outputHtmlReport