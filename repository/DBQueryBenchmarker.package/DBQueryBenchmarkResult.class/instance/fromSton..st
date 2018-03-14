ston persistence
fromSton: stonReader
	stonReader parseMapDo: [ :key :value |
		key = #queryString ifTrue: [ queryString := value ].
		key = #queryRunResults ifTrue: [ queryRunResults := value ] ]
	