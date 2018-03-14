*DBQueryBenchmarker
timeToRun: aQueryString
	"Run the query once on the database and returns the time to run as a DBQueryRunResult."
	^ self dbms timeToRun: aQueryString on: self