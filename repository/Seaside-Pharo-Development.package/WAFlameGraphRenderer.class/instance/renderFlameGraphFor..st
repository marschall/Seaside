rendering
renderFlameGraphFor: aMessageTally
	^ String streamContents: [ :stream |
		self renderFlameGraphFor: aMessageTally on: stream ]