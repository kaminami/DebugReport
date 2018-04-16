private
makeListKey: key value: value
	^ ('<li>{1}: {2}</li>' format: {key asString. value asString}) , Character cr asString