accessing
allTempVars
	^ [self contextPart tempsAndValues] on: Error do: [:ex | 'Error in generation of #allTempVars: ', ex description]