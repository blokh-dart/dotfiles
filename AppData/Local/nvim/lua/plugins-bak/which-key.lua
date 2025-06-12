local add = MiniDeps.add

add({
source = "folke/which-key.nvim",
})

require("which-key").setup({
	delay = 1500,
})
