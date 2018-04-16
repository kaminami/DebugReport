converting
asReportPart
	^ DRReportPart new 
		index: self index;
		ctxtTitle: self title;
		sourceText: self sourceText;
		receiver: self receiverString;
		allInstVars: self allInstVars;
		instVars: self instAndValueStrings;
		allTempVars: self allTempVars;
		tempVars: self tempAndValueStrings;
		pcRange: self pcRange;
		yourself