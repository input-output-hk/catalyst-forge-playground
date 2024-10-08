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
	providers: github: registry: "ghcr.io"
	tagging: {
		aliases: {
			"go":   "examples/go"
			"rust": "examples/rust"
		}
		strategy: "commit"
	}
}
