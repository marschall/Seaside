accessing
flameGraph
	^ flameGraph ifNil: [ flameGraph := items isEmpty ifTrue: [ WAComponent new ] ifFalse: [ WAFlameGraphComponent on: items first tally ] ]