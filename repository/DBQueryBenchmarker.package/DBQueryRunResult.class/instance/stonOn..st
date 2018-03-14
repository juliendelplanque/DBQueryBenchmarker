ston persistence
stonOn: stonWriter	
	stonWriter writeObject: self streamMap: [ :dictionary |
		dictionary
			at: #timeToRun put: timeToRun ]