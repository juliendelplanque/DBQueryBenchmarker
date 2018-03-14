*DBQueryBenchmarker
buildBenchmarkQueryFor: aQueryString
	^ String streamContents: [ :stream |
		stream
			<< 'EXPLAIN ANALYZE ';
			<< aQueryString ]