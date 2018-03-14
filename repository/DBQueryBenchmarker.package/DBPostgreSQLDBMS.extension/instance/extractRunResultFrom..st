*DBQueryBenchmarker
extractRunResultFrom: dataFromQueryRun
	| regex |
	regex := 'Execution time\: (\d+\.\d+) ms'asRegex.
	dataFromQueryRun rows
		detect: [ :row | regex matches: row first ]
		ifNone: [ self error: 'Unsupported data provided as input.' ].
		
	^ DBQueryRunResult timeToRun: (regex subexpression: 2) asNumber milliSecond