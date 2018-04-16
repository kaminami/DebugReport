file io
createBaseDir
	| currentDir base count dirName dir |
	currentDir := DRSettings outputDirectoryPath asFileReference.
	
	base := 'DebugReport-' , self formattedTimeStampString.
	count := 2.
	dirName := base.
	[(currentDir / dirName) exists] whileTrue: [
		dirName := base , '-' , count asString.
		count := count + 1.
	].

	dir := currentDir / dirName.
	dir ensureCreateDirectory.
	^ dir