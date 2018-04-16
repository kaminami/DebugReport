private
insertTemporarySelectedTag: aText
	| ts |
	self pcRange size > 0 ifFalse: [^ aText].

	ts := TextStream on: Text new.
	ts nextPutAll: (aText first: self pcRange first - 1).
	ts nextPutAll: '%selected_start%'.
	ts nextPutAll: (aText copyFrom: self pcRange first to: self pcRange last). 
	ts nextPutAll: '%selected_end%'.
	ts nextPutAll: (aText allButFirst: self pcRange last).
	^ ts contents.
