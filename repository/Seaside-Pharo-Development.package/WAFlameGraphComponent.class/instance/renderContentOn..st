rendering
renderContentOn: html

	html div id: 'flamegraph'.
	html script: (html javascript, (WAFlameGraphRenderer on: messageTally))