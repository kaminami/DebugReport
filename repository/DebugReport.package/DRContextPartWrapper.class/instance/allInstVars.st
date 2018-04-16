accessing
allInstVars
	| aStream indent receiver |
	indent := 0.
	receiver := self receiver.
	aStream := WriteStream on: (String new: 100).

	self instNames do: [:iName |
		indent timesRepeat: [aStream tab].
		aStream nextPutAll: iName; nextPut: $:; space; tab.
		aStream nextPutAll: 	((receiver instVarNamed: iName) printStringLimitedTo: (self sizeLimit -3 - iName size max: 1)).
		aStream cr
	].

	^ aStream contents