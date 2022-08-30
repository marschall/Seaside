rendering
renderFlameGraphFor: aMessageTally on: aStream
	| document context json |
	document := WAJsonDocument on: aStream.
	
	context := WARenderContext new.
	context document: document.
	json := WAJsonCanvas context: context.
	
	self renderTally: aMessageTally on: json