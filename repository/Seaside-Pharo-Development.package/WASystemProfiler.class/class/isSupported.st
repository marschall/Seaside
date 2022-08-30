testing
isSupported
	^ [ Smalltalk highResClock isZero not ]
		on: MessageNotUnderstood
		do: [ :error | ^ false ]