outputting
outputTempVarLists
	self reportParts do: [:part |
		self
			output: [:aStream | self outputTempVarListOn: aStream index: part index.]
			as: part index asString , '/tempVarList.html'
	].
