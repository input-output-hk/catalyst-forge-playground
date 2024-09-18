version: "1.0"
global: ci: {
	local: [
		"^check.*$",
		"^build.*$",
		"^test.*$",
		"^release.*$",
		"^publish.*$",
	]
	registries: [
		"ghcr.io/input-output-hk/catalyst-forge-playground",
	]
	provider: github: registry: "ghcr.io"
	tagging: {
		strategy: "commit"
	}
}