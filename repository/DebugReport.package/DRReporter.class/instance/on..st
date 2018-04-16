initialize-release
on: aDebugger
	|  parts |
	self executeFullStack: aDebugger.
	
	parts := OrderedCollection new.
	aDebugger stack list listItems doWithIndex: [:context :idx |
		parts add: (DRReportPart on: context index: idx).
	].

	reportParts := parts.
	label := reportParts first ctxtTitle