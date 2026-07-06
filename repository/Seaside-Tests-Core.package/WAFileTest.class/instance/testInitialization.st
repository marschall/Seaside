tests
testInitialization
	self assert: file fileName isNil.
	self assert: file contentType isNil.
	self assert: file rawContents isNil