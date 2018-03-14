ston persistence
stonOn: stonWriter	
	stonWriter writeObject: self streamMap: [ :dictionary |
		dictionary
			at: #queryString put: queryString;
			at: #queryRunResults put: queryRunResults ]