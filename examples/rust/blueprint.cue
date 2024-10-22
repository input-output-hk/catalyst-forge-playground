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
			config: {
				tag: _ @forge(name="GIT_COMMIT_HASH")
			}
		}
		github: {
			on: tag: {}
			config: {
				name:   string | *"dev" @forge(name="GIT_TAG")
				prefix: project.name
				token: {
					provider: "env"
					path:     "GITHUB_TOKEN"
				}
			}
		}
	}
}
