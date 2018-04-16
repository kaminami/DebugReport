outputting
outputInstVarLists
	self reportParts do: [:part |
		self
			output: [:aStream | self outputInstVarListOn: aStream index: part index.]
			as: part index asString , '/instVarList.html'
	].
