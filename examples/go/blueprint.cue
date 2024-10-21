version: "1.0.0"
project: {
	name: "go"
	ci: targets: {
		publish: {
			args: {
				version: string | *"v0.0.0" @env(name="GIT_TAG",type="string")
			}
			platforms: [
				"linux/amd64",
				"linux/arm64",
			]
		}
		release: {
			args: {
				version: string | *"v0.0.0" @env(name="GIT_TAG",type="string")
			}
			platforms: [
				"linux/amd64",
				"linux/arm64",
				"darwin/amd64",
				"darwin/arm64",
			]
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
