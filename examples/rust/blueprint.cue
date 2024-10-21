version: "1.0.0"
project: {
	name: "rust"
	ci: targets: {
		build: {
			privileged: true
		}
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
	release: {
		docker: {
			on: {
				merge: {}
				tag: {}
			}
		}
		github: {
			on: tag: {}
			config: {
				token: {
					provider: "env"
					path:     "GITHUB_TOKEN"
				}
			}
		}
	}
}
