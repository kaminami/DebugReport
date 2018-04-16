versions
version22: spec
	<version: '2.2' imports: #('2.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'for Pharo 5-6'. 
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '14 July 2017, 2:57:01.257357 pm'.

		spec package: 'DebugReport' with: 'DebugReport-kaminami.16'.
	]