return {
  {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = function(_, opts)
		-- Other blankline configuration here
		return require("indent-rainbowline").make_opts(opts, {
		    color_transparency = 0.25,
		})
	end,
	dependencies = {
		"TheGLander/indent-rainbowline.nvim",
	},
  }
}
