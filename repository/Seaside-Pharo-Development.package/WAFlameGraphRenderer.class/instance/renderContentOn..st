rendering
renderContentOn: html
	| url |
	html div id: 'flamegraph'.
	
	url := html context
		urlForDocument: (GRDelayedSend
			receiver: self selector: #renderFlameGraph)
		mimeType: WAMimeType applicationJson
		fileName: 'flamegraph.json'.
	
	html script
		"type: 'text/javascript'"
		with: '
  var chart = flamegraph()
    .width(960);

  d3.json("', url, '")
    .then(data => {
      d3.select("#flamegraph")
        .datum(data)
        .call(chart);
    }).catch(error => {
      return console.warn(error);
    });'