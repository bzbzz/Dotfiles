return {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git/",
			"package%-lock%.json", -- escaped hyphen and dots
		},
	},
    pickers = {
        find_files = {
            hidden = true,  -- Show hidden files
        },
    },
}
