outputting
write: aString to: pathString
	self zip addString: (aString convertToWithConverter: self textConverter) contents as: pathString