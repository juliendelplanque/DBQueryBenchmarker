printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(.
	self timeToRun printOn: aStream.
	aStream
		<< $)