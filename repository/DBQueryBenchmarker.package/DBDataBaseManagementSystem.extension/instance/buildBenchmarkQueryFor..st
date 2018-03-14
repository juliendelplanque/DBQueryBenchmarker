*DBQueryBenchmarker
buildBenchmarkQueryFor: aQueryString
	"Returns the query that can be executed to benchmark #aQueryString provided as parameter."
	^ self subclassResponsibility