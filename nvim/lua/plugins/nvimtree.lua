return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- vim.g.loaded_netrw = 1
		-- vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			hijack_netrw = false,
			-- disable_netrw = true,
			-- hijack_cursor = true,
			-- sync_root_with_cwd = true,
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				highlight_git = true,
				highlight_opened_files = "name",
			},
			actions = {
				open_file = {
					quit_on_open = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "[T]oggle Nvim[T]ree" })
	end,
}
