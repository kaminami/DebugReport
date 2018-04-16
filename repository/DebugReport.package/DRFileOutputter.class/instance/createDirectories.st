outputting
createDirectories

	| dirName |
	self reportParts do: [:part |
		| dir  |
		dirName := part index asString.
		dir := self baseDir / dirName.
		
		dir ensureCreateDirectory.
		(dir / 'instVal') ensureCreateDirectory.
		(dir / 'tempVal') ensureCreateDirectory.
	].