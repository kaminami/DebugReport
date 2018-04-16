private
insertSelectedTag: aString
	| replaced |

	replaced := ('*%selected_start%*' match: aString) 
		ifTrue: [aString copyReplaceAll: '%selected_start%' with: '<span class="selected">'] 
		ifFalse: ['<span class="selected">' , aString].

	replaced := ('*%selected_end%*' match: aString) 
		ifTrue: [replaced copyReplaceAll: '%selected_end%' with: '</span>']
		ifFalse: [replaced , '</span>'].

	^ replaced

