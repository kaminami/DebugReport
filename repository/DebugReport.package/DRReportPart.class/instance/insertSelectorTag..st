private
insertSelectorTag: aString
	| replaced |

	replaced := ('*%selector_start%*' match: aString) 
		ifTrue: [aString copyReplaceAll: '%selector_start%' with: '<span class="selector">']
		ifFalse: ['<span class="selector">' , aString	].

	replaced := ('*%selector_end%*' match: aString) 
		ifTrue: [replaced copyReplaceAll: '%selector_end%' with: '</span>']
		ifFalse: [replaced , '</span>'].

	^ replaced


