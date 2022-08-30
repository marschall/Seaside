initialization
initialize
	super initialize.
	ticksPerMillisecond := self computeTicksPerMillisecond.
	profileSemaphore := Semaphore new