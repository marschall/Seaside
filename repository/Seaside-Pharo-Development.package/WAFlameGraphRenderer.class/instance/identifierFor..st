private
identifierFor: aMessageTally
	aMessageTally isPrimitives ifTrue: [ 
		 ^ 'primitives' ].

	^ String streamContents: [ :stream |
		| class methodClass |
		class := aMessageTally theClass.
		class displayStringOn: stream.
		methodClass := aMessageTally method methodClass.
		methodClass ~~ class ifTrue: [ 
			stream
				nextPut: $(;
				print: methodClass;
				nextPut: $) ].
		stream
			nextPutAll: '>>';
			store: aMessageTally method selector ]