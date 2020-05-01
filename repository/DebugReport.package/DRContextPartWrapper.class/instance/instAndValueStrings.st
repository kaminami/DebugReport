accessing
instAndValueStrings
	| col |
	col := OrderedCollection new.
	self instNames 
		do: [:title  | 
			| titleStr |
			titleStr := [ (self receiver instVarNamed: title) printString ]
								on: Error
								do: [ :ex | 'Error in generation of #instAndValueStrings, ', ex description ].
			col add: (title -> titleStr)].
	^ col