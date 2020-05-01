testing
outputEnabled
	| entries ref |

	DRSettings hasOutputLimit  ifFalse: [ ^ true ].
	
	ref := DRSettings outputDirectoryReference.
	entries := ref entries select: [ :e | e basename beginsWith: 'DebugReport' ].
	(entries size < DRSettings outputLimit)
		ifTrue: [ ^ true ].
	
	
	^ false