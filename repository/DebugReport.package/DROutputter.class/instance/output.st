outputting
output
	self outputMethods do: [:selector |
		self perform: selector.
	] displayingProgress: 'Now outputting DebugReport...'.