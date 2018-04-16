testing
outputEnabled
	| entries ref |

	DRSettings hasOutputLimit 
		ifFalse: [ ^ true ].
	
	ref := DRSettings outputDirectoryPath asFileReference.
	ref ensureCreateDirectory.
	entries := ref entries select: [ :e | e basename beginsWith: 'DebugReport' ].
	(entries size < DRSettings outputLimit)
		ifTrue: [ ^ true ].
	
	
	^ false