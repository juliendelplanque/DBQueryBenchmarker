*DBQueryBenchmarker
extractRunResultFrom: dataFromQueryRun
	| timeToRunString regex |
	regex := 'Execution time\: (\d+\.\d+) ms'asRegex.
	timeToRunString := dataFromQueryRun rows third first.
	(regex matches: timeToRunString)
		ifFalse: [ self error: 'Unsupported data provided as input.' ].
		
	^ DBQueryRunResult timeToRun: (regex subexpression: 2) asNumber milliSecond