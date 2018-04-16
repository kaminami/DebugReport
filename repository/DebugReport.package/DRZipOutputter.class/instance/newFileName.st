file io
newFileName
	| base extension count fileName |
	base := 'DebugReport-' , self formattedTimeStampString.
	extension := '.zip'.

	fileName := base.
	count := 2.
	[(self baseDir / (fileName , extension)) exists] whileTrue: [
		fileName := base , '-' , count asString.
		count := count + 1.
	].
	^ fileName , extension