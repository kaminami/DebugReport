outputting to stream
outputStackListOn: aStream index: anInteger

	| list |
	list := String streamContents: [:str |
		self reportParts do: [:rp |
			(rp index = anInteger) ifTrue: [
				str nextPutAll: '<li class="current"><a name="current">'.
				str nextPutAll: rp ctxtTitle.
				str nextPutAll: '</li>'.
			] ifFalse: [
				str nextPutAll: '<li><a href="../'.
				str nextPutAll: rp index asString.
				str nextPutAll: '/report.html" target="_top">'.
				str nextPutAll: rp ctxtTitle.
				str nextPutAll: '</a></li>'.
			].
			str nextPut: Character cr.
		].
	].

	^ aStream nextPutAll: (self class stackListTemplate format: {list.})

