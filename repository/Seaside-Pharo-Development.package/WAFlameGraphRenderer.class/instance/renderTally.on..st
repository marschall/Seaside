rendering
renderTally: aMessageTally on: json
	json object: [ 
		json key: 'name' value: (self identifierFor: aMessageTally).
		json key: 'value' value: aMessageTally tally.
		aMessageTally receivers isEmptyOrNil ifFalse: [
			| children |
			children := aMessageTally receivers select: [ :each | each process notNil ].
			children isEmpty ifFalse: [
				json key: 'children' value: [
					json array: [ 
						children do: [ :each |
							self renderTally: each on: json ] ] ] ] ] ]