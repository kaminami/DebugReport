versions
version20: spec
	<version: '2.0' imports: #('2.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'for Pharo 4'. 
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '14/11/2016 6:34'.

		spec package: 'DebugReport' with: 'DebugReport-minami.14'.
	]