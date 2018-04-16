initialize-release
context: aContext label: title
	|  stack parts |
	stack := aContext stackOfSize: self stackSize.

	parts := OrderedCollection new.
	stack doWithIndex: [:s :idx |
		parts add: (DRReportPart on: s index: idx).
	].

	reportParts := parts.

	label := title