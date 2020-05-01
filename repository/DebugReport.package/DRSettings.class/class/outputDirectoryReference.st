util
outputDirectoryReference
	| ref |
	ref := (FileLocator imageDirectory / self outputDirectoryPath) asFileReference.
	ref ensureCreateDirectory.
	^ ref