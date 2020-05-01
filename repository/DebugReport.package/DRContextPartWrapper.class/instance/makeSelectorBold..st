private
makeSelectorBold: aText
	"For formatting Smalltalk source code, set the emphasis of that portion of 
	the receiver's string that parses as a message selector to be bold."

	| string parser i |
	string := aText asString.
	string size = 0 ifTrue: [^ aText].

	parser := RBParser parseMethod: string.
	aText makeBoldFrom: 1 to: (parser selectorAndArgumentNames size min: string size).
	^ aText
	

