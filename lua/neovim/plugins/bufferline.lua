-- return {
-- 	"akinsho/bufferline.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	event = "BufReadPre",
--
-- 	version = "*",
-- 	opts = {
-- 		options = {
-- 			mode = "buffers",
-- 			separator_style = "slope",
-- 		},
-- 	},
-- }

-- return {}

return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	event = "BufReadPre",
	opts = {
		options = {
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separetor = true,
					padding = 1,
				},
			},
			mode = "buffers",
			separator_style = "slope",
		},
	},
}
