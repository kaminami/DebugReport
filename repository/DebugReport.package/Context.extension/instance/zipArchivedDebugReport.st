*DebugReport
zipArchivedDebugReport
	| label |
	label := thisContext sender printString.
	(DRReporter context: self label: label) zipArchivedHtmlReport