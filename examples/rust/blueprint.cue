version: "1.0.0"
project: {
	name: "rust"
	ci: targets: {
		release: {
			platforms: [
				"linux/amd64",
				"linux/arm64",
			]
			privileged: true
		}
		publish: {
			platforms: [
				"linux/amd64",
				"linux/arm64",
			]
			privileged: true
		}
	}
}
