outputting
write: aString to: pathString
	| path fs dirs currentDir |
	path := pathString subStrings: '/\:'.

	dirs := path allButLast.
	currentDir := self baseDir.
	dirs do: [:dirName | currentDir := currentDir / dirName].

	currentDir ensureCreateDirectory.

	fs := self forceNewFileNamed: path last in: currentDir.
	[
		fs nextPutAll: aString.
	] ensure: [fs close].