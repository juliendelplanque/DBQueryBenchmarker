*DBQueryBenchmarker
benchmark: aQueryString forSteps: anInteger on: aDBConnectionDescription
	| runResults |
	runResults := (1 to: anInteger) collect: [ :step | 
						self timeToRun: aQueryString on: aDBConnectionDescription ].
	^ (DBQueryBenchmarkResult queryRunResults: runResults)
			queryString: aQueryString;
			yourself