ston persistence
fromSton: stonReader
	stonReader parseMapDo: [ :key :value |
		key = #timeToRun ifTrue: [ timeToRun := value ] ]
	