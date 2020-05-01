accessing
allInstVars
	| aStream indent receiver |
	indent := 0.
	receiver := self receiver.
	aStream := WriteStream on: (String new: 100).

	self instNames do: [:iName |
		| instVarPrint |
		indent timesRepeat: [aStream tab].
		aStream nextPutAll: iName; nextPut: $:; space; tab.
		
		instVarPrint := [ (receiver instVarNamed: iName) printStringLimitedTo: (self sizeLimit -3 - iName size max: 1) ] 
							on: Error 
							do: [ :ex | 'Error in generation of #allInstVars, ', ex description ].
		aStream nextPutAll: instVarPrint.
		aStream cr
	].

	^ aStream contents