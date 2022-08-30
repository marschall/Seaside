private
stopProfiling
	Smalltalk profileSemaphore: nil.
	"Stop profiling"
	Smalltalk profileStart: 0.
	"Stop the profiler process"
	profilerProcess ifNotNil: [
		profilerProcess suspend.
		profilerProcess := nil ].
	^ root