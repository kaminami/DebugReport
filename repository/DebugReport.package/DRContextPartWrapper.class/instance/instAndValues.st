accessing
instAndValues
	| dic |
	dic := Dictionary new.
	self instNames do: [:title  | dic at: title put: (self receiver instVarNamed: title)].
	^ dic