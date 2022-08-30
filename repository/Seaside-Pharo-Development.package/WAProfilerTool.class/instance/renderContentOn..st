rendering
renderContentOn: html
	html div class: 'tool'; with: self flameGraph.
	self message isNil 
		ifFalse: [ html preformatted: self message ]