outputting
output: aBlock as: pathString
	| aStream |
	aStream := '' writeStream.
	[
		aBlock value: aStream.
		self write: aStream contents to: pathString.
	] ensure: [
		aStream close.
	].