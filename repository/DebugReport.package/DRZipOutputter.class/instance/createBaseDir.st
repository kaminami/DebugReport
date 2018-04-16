file io
createBaseDir
	| dir |
	dir := DRSettings outputDirectoryPath asFileReference. 
	dir ensureCreateDirectory.
	^ dir