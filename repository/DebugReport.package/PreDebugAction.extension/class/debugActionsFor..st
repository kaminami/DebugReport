*DebugReport-actions creation-override
debugActionsFor: aDebugger
	<preDebuggingAction>
	
	^ { 
		self new
			id: #abandonAction;
			selector: #close;
			order: 10;
			label: 'Abandon'.
		self new
			id: #openFullDebuggerAction;
			selector: #openFullDebugger;
			order: 15;
			label: 'Debug'.
		self new
			id: #outputDebugReportAction;
			selector: #outputDebugReport;
			order: 20;
			label: 'DebugReport'
	}