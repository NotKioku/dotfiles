return {
	{ -- Git plugin
		"tpope/vim-fugitive",
	},

	{ -- Detect tabstop and shiftwidth automatically
		"NMAC427/guess-indent.nvim",
	},

	{ -- Discord rich presence
		"vyfor/cord.nvim",
		event = "VeryLazy",
		build = ":Cord update",
		opts = { display = { flavor = "accent" } },
	},

	{ -- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{ -- Undotree
		"mbbill/undotree",
		lazy = true,
		keys = {
			{ "<leader>tu", "<cmd>UndotreeToggle<CR>", desc = "[T]oggle [U]ndotree" },
		},
	},

	{ -- Indent line
		"saghen/blink.indent",
	},
}
