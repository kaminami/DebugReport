accessing
encodingName
	encodingName ifNil: [encodingName := #utf8].
	^ encodingName