accessing
zip
	zip ifNil: [zip := ZipArchive new].
	^ zip