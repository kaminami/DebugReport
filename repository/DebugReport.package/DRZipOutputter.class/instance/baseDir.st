accessing
baseDir
	baseDir ifNil: [baseDir := self createBaseDir].
	^ baseDir