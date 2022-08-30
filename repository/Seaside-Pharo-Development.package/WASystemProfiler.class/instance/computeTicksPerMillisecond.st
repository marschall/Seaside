private
computeTicksPerMillisecond
	| t0 start |
	t0 := Time millisecondClockValue + 2.

	[ Time millisecondClockValue >= t0 ] whileFalse.
	start := Smalltalk highResClock.

	"Run a 100 msec busy loop to figure out the ticks per msec"
	[ Time millisecondClockValue >= (t0 + 100) ] whileFalse.
	^ (Smalltalk highResClock - start) 
			// (Time millisecondClockValue - t0)
			"Try to get 10 samples per msec"
			// 10