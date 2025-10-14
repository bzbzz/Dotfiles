return {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git/",
			"package%-lock%.json", -- escaped hyphen and dots
		},
	},
}
