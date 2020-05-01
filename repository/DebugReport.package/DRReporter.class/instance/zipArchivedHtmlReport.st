outputting
zipArchivedHtmlReport
	| outputter |
	outputter := DRZipArchiver on: reportParts.
	outputter timeStamp: DateAndTime now.
	outputter label: label.
	
	^ outputter 
		output;
		zip