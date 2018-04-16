outputting
output
	| fs |
	super output.

	fs := (self baseDir / self newFileName) writeStream.
	(fs respondsTo:  #converter:) ifTrue: [
		fs converter: self textConverter.
	].
	[zip writeTo: fs] ensure: [fs close]