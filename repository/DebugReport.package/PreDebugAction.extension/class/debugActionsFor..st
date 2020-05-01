*DebugReport-actions creation-override
debugActionsFor: aDebugger
	<preDebuggingAction>
	
	^ { 
		self new
			id: #abandonAction;
			selector: #close;
			order: 10;
			help: 'Close the debugger and ignore the exception';
			label: 'Abandon'.
		self new
			id: #openFullDebuggerAction;
			selector: #openFullDebugger;
			order: 15;
			help: 'Open a full debugger to navigate in the full bugged stack.';
			label: 'Debug'.
		self new
			id: #outputDebugReportAction;
			selector: #outputDebugReport;
			order: 20;
			help: 'Output DebugReport file';
			label: 'DebugReport'

	}