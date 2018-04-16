versions
version21: spec
	<version: '2.1' imports: #('2.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'for Pharo 5'. 
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '29 June 2017, 5:27:41.49788 pm'.

		spec package: 'DebugReport' with: 'DebugReport-kaminami.15'.
	]