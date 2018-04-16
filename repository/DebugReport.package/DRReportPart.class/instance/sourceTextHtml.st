html
sourceTextHtml
	| cr srcStr list srcText inSelector inSelected |
	cr := Character cr asString.

	srcText := self insertTemporarySelectedTag: self sourceText.
	srcStr := self insertTemporarySelectorTag: srcText.

	inSelected := false.
	inSelector := false.

	list := String streamContents: [:str |
		srcStr linesDo: [:line |
			| replaced |
			replaced := line asHTMLString.
			('*%selector_start%*' match: line) ifTrue: [inSelector := true].
			('*%selected_start%*' match: line) ifTrue: [inSelected := true].

			replaced := self replaceWhiteSpaces: replaced.
			inSelector ifTrue: [replaced := self insertSelectorTag: replaced].
			inSelected ifTrue: [replaced := self insertSelectedTag: replaced].

			str nextPutAll: '<li>' , replaced , '</li>' , cr.

			('*%selector_end%*' match: line) ifTrue: [inSelector := false].
			('*%selected_end%*' match: line) ifTrue: [inSelected := false].
		].
	].
	^ list