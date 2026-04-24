return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.pairs").setup()
		local hipatterns = require("mini.hipatterns")
		hipatterns.setup({ highlighters = { hex_color = hipatterns.gen_highlighter.hex_color() } })
	end,
}
