private
makeSelectorBold: aText
	"For formatting Smalltalk source code, set the emphasis of that portion of 
	the receiver's string that parses as a message selector to be bold."

	| string parser i |
	string := aText asString.
	string size = 0 ifTrue: [^ aText].
	i := 0.
	[(string at: (i := i + 1)) isSeparator] whileTrue.
	(string at: i) = $[ ifTrue: [aText].  "block, no selector"
	[(parser := Parser new) parseSelector: string] on: Error do: [^ aText].
	aText makeBoldFrom: 1 to: (parser endOfLastToken min: string size).
	^ aText