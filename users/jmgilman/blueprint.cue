version: "1.0.0"
project: {
	name: "hello"
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
