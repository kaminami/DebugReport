outputting
outputInstVals
	| instValDirName |
	self reportParts do: [:part |
		instValDirName := part index asString , '/instVal/'.

		self 
			output: [:aStream | self outputValueOn: aStream key: 'self' value: part receiver]
			as: instValDirName , 'self.html'.


		self 
			output: [:aStream | self outputAllValuesOn: aStream key: 'all inst vars' value: part allInstVarsHtml]
			as: instValDirName , 'all_inst_vars.html'.

		part instVars do: [:assoc |
			self 
				output: [:aStream | self outputValueOn: aStream key: assoc key value: assoc value]
				as: instValDirName , assoc key , '.html'.
		].
	].
