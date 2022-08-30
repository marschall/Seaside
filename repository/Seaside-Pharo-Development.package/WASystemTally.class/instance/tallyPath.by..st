tallying
tallyPath: context by: anInteger
	"Tally the context chain"

	| aMethod tally |
	aMethod := context method.
	tally := receivers.
	[ tally isNil ]
		whileFalse: [ 
			tally method == aMethod
				ifTrue: [ ^ tally bumpBy: anInteger ].
			tally := tally nextLink ].
	tally := WASystemTally method: aMethod.
	tally nextLink: receivers.
	receivers := tally.
	^ tally bumpBy: anInteger