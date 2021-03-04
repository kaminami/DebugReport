accessing
pcRange	
	^ self contextPart debuggerMap 
			rangeForPC: self contextPart pc
			contextIsActiveContext: true
