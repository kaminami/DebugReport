outputting
outputStackCodes
	self reportParts do: [:part |
		self
			output: [:aStream | self outputStackCodeOn: aStream index: part index.]
			as: part index asString , '/stackCode.html'
	].
