accessing
tempAndValueStrings
	| col |
	col := OrderedCollection new.
	self contextPart tempNames
		doWithIndex: [:title :idx |
			| titleStr |
			titleStr := [ (self contextPart debuggerMap namedTempAt: idx in: self contextPart) printString ]
								on: Error 
								do: [ :ex | 'Error in generation of #tempAndValueStrings, ', ex description ].
			col add: (title -> titleStr)].

	^ col