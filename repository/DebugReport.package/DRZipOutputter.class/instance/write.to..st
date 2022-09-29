outputting
write: aString to: pathString
	self zip addString: (aString encodeWith: self encodingName) contents as: pathString