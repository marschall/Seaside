*rss-core
rssCore
	^ self new
		name: 'RSS-Core';
		description: 'RSS integration for Seaside. Helps to create RSS 2.0 feeds.';
		addDependency: 'Seaside-Canvas';
		url: #seasideUrl;
		yourself