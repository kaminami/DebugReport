private
formattedTimeStampString

	| dStr tStr |
	dStr := self timeStamp asDate printFormat: #(3 2 1 0 1 1 2 ).
	tStr := self timeStamp asTime print24 copyReplaceAll: ':' with: ''.

	^ dStr , tStr