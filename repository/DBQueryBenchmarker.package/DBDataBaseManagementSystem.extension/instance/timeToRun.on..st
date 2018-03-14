*DBQueryBenchmarker
timeToRun: aQueryString on: aDBConnectionDescription
	| benchmarkQuery |
	benchmarkQuery := self buildBenchmarkQueryFor: aQueryString.
	^ self extractRunResultFrom: (aDBConnectionDescription execute: benchmarkQuery)