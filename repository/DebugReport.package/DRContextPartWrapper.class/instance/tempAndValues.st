accessing
tempAndValues
	| dic |
	dic := Dictionary new.
	self contextPart tempNames
		doWithIndex: [:title :idx |
			dic at: title put: (self contextPart tempAt: idx)].
	^ dic