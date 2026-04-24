return {
	"echasnovski/mini.files",
	opts = {
		mappings = {
			close = "<Esc>",
			go_in = "<C-j>",
			go_in_plus = "<CR>",
			go_out = "_",
			go_out_plus = "-",
			reset = ",",
			reveal_cwd = ".",
			show_help = "g?",
			synchronize = "s",
			trim_left = "<",
			trim_right = ">",
		},
		windows = {
			preview = true,
			width_focus = 30,
			width_preview = 30,
		},
		options = {
			use_as_default_explorer = false,
			permanent_delete = false,
		},
	},
	keys = {
		{
			"<leader>e",
			function()
				local path

				if vim.bo.filetype == "oil" then
					path = require("oil").get_current_dir()
				else
					path = vim.api.nvim_buf_get_name(0)
				end

				require("mini.files").open(path, true)
			end,
			desc = "Open mini.files (Directory of Current File)",
		},
		{
			"<leader>E",
			function()
				require("mini.files").open(vim.uv.cwd(), true)
			end,
			desc = "Open mini.files (cwd)",
		},
	},
	config = function(_, opts)
		require("mini.files").setup(opts)
	end,
}
