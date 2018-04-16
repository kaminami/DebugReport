versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	
	spec for: #pharo do: [
		spec blessing: #release.
		spec description: 'for Pharo 3'. 
		spec author: 'Kazuki Minamitani'.
		spec timestamp: '10/11/2014 6:10'.

		spec package: 'DebugReport' with: 'DebugReport-minami.5'.
	]