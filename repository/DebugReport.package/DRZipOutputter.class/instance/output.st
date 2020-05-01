outputting
output
	| fs |
	super output.
	
	fs := (self baseDir / self newFileName) binaryWriteStream.
	[zip writeTo: fs] ensure: [fs close]