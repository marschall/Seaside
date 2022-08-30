private
runProfilerProcess
	"Run the profiler process"
	| stop totalTicks tallyCount |
	root := WASystemTally method: nil.
	tallyCount := 0.
	totalTicks := 0.
	stop := Smalltalk highResClock.
	[ true ] whileTrue: [
		| start ticks method process |
		Transcript show: 'X'.
		start := stop.
		start := Smalltalk highResClock.
		Smalltalk profileStart: ticksPerMillisecond. "run for n ticks"
		profileSemaphore wait.
		stop := Smalltalk highResClock.
		ticks := stop - start.
		totalTicks := totalTicks + ticks.
		process := Smalltalk profileSample.
		method := Smalltalk profilePrimitive.
		tallyCount := tallyCount + 1.
		process ifNotNil: [
			| leaf |
			leaf := root tally: (process suspendedContext ifNil: [ thisContext ]) by: ticks.
			method ifNotNil: [ leaf tallyMethod: method by: ticks ] ] ]