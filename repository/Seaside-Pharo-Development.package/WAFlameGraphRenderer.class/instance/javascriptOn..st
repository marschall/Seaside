rendering
javascriptOn: aStream
	aStream nextPutAll: '
  const chart = flamegraph()
    .width(960);

  d3.select("#flamegraph")
        .datum('.
	self renderFlameGraphFor: messageTally on: aStream.
	aStream nextPutAll: ')
        .call(chart);'