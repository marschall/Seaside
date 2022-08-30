actions
profile: aBlock
	
	| tally |
	self startProfiling.
	tally := nil.
	aBlock ensure: [ tally := self stopProfiling ].
	^ tally