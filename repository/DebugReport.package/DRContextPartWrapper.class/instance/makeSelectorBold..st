private
makeSelectorBold: aText
	"For formatting Smalltalk source code, set the emphasis of that portion of 
	the receiver's string that parses as a message selector to be bold."

	| string parsedNode |
	string := aText asString.
	string ifEmpty: [ ^ aText ].

	parsedNode := [ RBParser parseMethod: string ]
		              on: CodeError
		              do: [ RBParser parseExpression: string ].

	aText
		makeBoldFrom: 1
		to: (parsedNode selectorAndArgumentNames size min: string size).
	^ aText