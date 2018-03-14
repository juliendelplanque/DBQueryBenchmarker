baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			package: #'DBQueryBenchmarker' with: [ spec requires: #('DBConnectionsManager') ].
			
		spec baseline: 'DBConnectionsManager' with: [ 
			spec
				repository: 'github://juliendelplanque/DBConnectionsManager/repository' ]  ]
