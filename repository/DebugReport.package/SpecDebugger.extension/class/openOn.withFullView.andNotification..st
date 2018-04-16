*DebugReport-opening-override
openOn: aDebugSession withFullView: aBool andNotification: aString
	"DebugReport: for Pharo5"
	
	| debugger |
	debugger := self on: aDebugSession.

	DRSettings autoOutputMode ifTrue: [ 
		[debugger outputDebugReport] on: Error do: [:ex | "ignore" ].
	].
		
	aBool | self alwaysOpenFullDebugger
		ifTrue: [ debugger openWithFullView ]
		ifFalse: [ debugger openWithNotification: aString]