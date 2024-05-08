return {
	{
		"xeluxee/competitest.nvim",
		lazy = false,
		dependencies = "MunifTanjim/nui.nvim",
		config = function()
			require("competitest").setup({
				testcases_use_single_file = true,
				runner_ui = {
					interface = "split",
				},
				template_file = {
					cpp = "~/.config/nvim/lua/neovim/snippets/cprogram.cpp",
				},
				evaluate_template_modifiers = true,
			})
		end,
	},
}
