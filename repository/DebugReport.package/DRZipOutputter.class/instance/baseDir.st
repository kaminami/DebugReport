accessing
baseDir
	baseDir ifNil: [ baseDir := DRSettings outputDirectoryReference ].
	^ baseDir