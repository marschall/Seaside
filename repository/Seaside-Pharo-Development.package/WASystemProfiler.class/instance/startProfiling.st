private
startProfiling	
	Smalltalk profileSemaphore: profileSemaphore.

	profilerProcess := [ self runProfilerProcess ]
		forkAt: Processor timingPriority - 1
		named: 'Profiler Process'.
