outputting
outputTempVals
	| tempValDirName |
	self reportParts do: [:part |
		tempValDirName := part index asString , '/tempVal/'.

		self 
			output: [:aStream | self outputValueOn: aStream key: 'thisContext' value: part ctxtTitle]
			as: tempValDirName , 'thisContext.html'.

		self 
			output: [:aStream | self outputAllValuesOn: aStream key: 'all temp vars' value: part allTempVarsHtml]
			as: tempValDirName , 'all_temp_vars.html'.

		part tempVars do: [:assoc |
			self 
				output: [:aStream | self outputValueOn: aStream key: assoc key value: assoc value]
				as: tempValDirName , assoc key , '.html'.
		].
	].
