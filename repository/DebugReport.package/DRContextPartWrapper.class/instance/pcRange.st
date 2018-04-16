accessing
pcRange
	| pc  |
	pc := self contextPart pc - ((self index = 1) ifTrue: [1] ifFalse: [2]).
	
	^ self contextPart debuggerMap 
			rangeForPC: self contextPart  pc