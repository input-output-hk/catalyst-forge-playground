version: "1.0"
global: {
	ci: {
		local: [
			"^check.*$",
			"^build.*$",
			"^test.*$",
		]
		registries: [
			"ghcr.io/input-output-hk/catalyst-forge-playground",
		]
		providers: github: registry: "ghcr.io"
	}
	repo: {
		defaultBranch: "master"
		name:          "input-output-hk/catalyst-forge-playground"
	}
}
