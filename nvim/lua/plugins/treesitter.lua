return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"java",
					"tsx",
					"typescript",
					"javascript",
					"cpp",
					"html",
					"markdown",
					"rust",
					"c_sharp",
				},
				auto_install = false,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "ruby" },
				},
				indent = { enable = true, disable = { "ruby", "javascript", "typescript" } },
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
	},
}
