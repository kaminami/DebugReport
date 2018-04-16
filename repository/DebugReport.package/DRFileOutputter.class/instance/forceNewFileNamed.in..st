file io
forceNewFileNamed: fileName in: fileDirectory
	| fileStream |
	fileStream := (fileDirectory / fileName) writeStream.

	(fileStream respondsTo:  #converter:) ifTrue: [
		fileStream converter: LanguageEnvironment defaultSystemConverter
	].

	^ fileStream