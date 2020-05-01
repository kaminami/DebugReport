*DebugReport-actions
zipArchivedDebugReport
	^ (DRReporter context: self signalerContext label: self signalerContext printString) zipArchivedHtmlReport