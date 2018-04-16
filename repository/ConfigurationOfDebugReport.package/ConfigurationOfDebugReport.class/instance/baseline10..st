baselines
baseline10: spec
    <version: '1.0-baseline'>
    
	spec for: #'pharo' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.smalltalkhub.com/mc/kaminami/DebugReport-Pharo/main'.
		spec package: 'DebugReport'.
		spec group: 'default' with: #('DebugReport' )]
