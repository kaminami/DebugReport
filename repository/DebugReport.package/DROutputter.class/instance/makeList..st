private
makeList: value
	^ ('<li>{1}</li>' format: {value asString}) , Character cr asString