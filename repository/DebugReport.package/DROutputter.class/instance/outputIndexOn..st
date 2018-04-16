outputting to stream
outputIndexOn: aStream
	
	| basicState  packageState list |
	basicState := String streamContents: [:stream |
		stream nextPutAll: (self makeListKey: 'VM' value: self vmVersion).
		stream nextPutAll: (self makeListKey: 'Image' value: self imageVersion).
	].

	list := String streamContents: [:str |
		self reportParts do: [:rp |
			str nextPutAll: '<li><a href="'.
			str nextPutAll: rp index asString.
			str nextPutAll: '/report.html">'.
			str nextPutAll: rp ctxtTitle.
			str nextPutAll: '</a></li>'.
			str nextPut: Character cr.
		].
	].

	packageState := String streamContents: [:stream |
		| packageDescriptions |
		packageDescriptions := (MCWorkingCopy registry values asSortedCollection: [:a :b | a packageName < b packageName]) 
									collect: [:each | each description].
		packageDescriptions
			do: [:each | stream nextPutAll: (self makeList: each).].
	].

	^ aStream nextPutAll: (self class indexTemplate format: {self label. self timeStamp. basicState. list. packageState})

