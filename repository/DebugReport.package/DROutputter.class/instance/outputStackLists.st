outputting
outputStackLists
	self reportParts do: [:part |
		self
			output: [:aStream | self outputStackListOn: aStream index: part index.]
			as: part index asString , '/stackList.html'
	].
