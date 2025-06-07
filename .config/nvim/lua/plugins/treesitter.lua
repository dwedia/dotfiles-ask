return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      hightlight = {
	enable = true,
      },
      indent = {
	enable = true,
      },
      autotage = {
	enable = true,
      },
      ensure_installed = {
	"lua",
	"bash",
	"csv",
	"desktop",
	"dockerfile",
	"html",
	"hyprlang",
	"jinja",
	"jinja_inline",
	"jq",
	"json",
	"markdown",
	"markdown_inline",
	"toml",
	"xml",
	"yaml",
      },
      auto_install = false,
    })
  end
}
