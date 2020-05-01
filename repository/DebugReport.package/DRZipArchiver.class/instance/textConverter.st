accessing
textConverter
	textConverter ifNil: [textConverter := UTF8TextConverter new].
	^ textConverter