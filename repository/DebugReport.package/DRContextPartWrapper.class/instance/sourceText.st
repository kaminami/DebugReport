accessing
sourceText
	 | txt |
	txt := [self contextPart methodNode source asText] 
			on: Error 
			do: [:ex | ex return: ('noSource "', self contextPart printString, '"') asText].

	^self makeSelectorBold: txt
	