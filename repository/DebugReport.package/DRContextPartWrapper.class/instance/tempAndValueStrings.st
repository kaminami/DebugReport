accessing
tempAndValueStrings
	| col |
	col := OrderedCollection new.
	self contextPart tempNames
		do: [:title |
			| titleStr |
			titleStr := [ (self contextPart tempNamed: title) printString ]
								on: Error 
								do: [ :ex | 'Error in generation of #tempAndValueStrings, ', ex description ].
			col add: (title -> titleStr)].

	^ col