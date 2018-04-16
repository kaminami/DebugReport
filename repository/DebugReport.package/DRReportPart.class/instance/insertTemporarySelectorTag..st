private
insertTemporarySelectorTag: aText
	| runLength |
	runLength := aText runLengthFor: 1.

	^ String streamContents: [:str |
		str nextPutAll: '%selector_start%'.
		str nextPutAll: (aText first: runLength).
		str nextPutAll: '%selector_end%'.
		str nextPutAll: (aText allButFirst: runLength).
	].