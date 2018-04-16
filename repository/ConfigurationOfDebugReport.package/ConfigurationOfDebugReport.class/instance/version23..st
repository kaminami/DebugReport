versions
version23: spec
	<version: '2.3' imports: #('2.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'for Pharo 5-6'. 
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '20 September 2017, 12:33:12.794927 am'.

		spec package: 'DebugReport' with: 'DebugReport-kaminami.17'.
	]