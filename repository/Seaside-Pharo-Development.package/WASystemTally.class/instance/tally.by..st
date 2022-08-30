tallying
tally: aContext by: anInteger
	"Explicitly tally the specified context and its stack."

	^ (aContext sender
		ifNil: [ self bumpBy: anInteger ]
		ifNotNil: [ :sender | self tally: sender by: anInteger ]) tallyPath: aContext by: anInteger