-- Global mapping
require("utils").setup()

require("keymaps")
require("options")
vim.o.guifont = "FiraCode Nerd Font:h15" -- Customize as needed
vim.g.neovide_transparency = 0.9
--- PLUGINS ---
-- require("deps") -- Mini deps
--------------
-- require("plugins.gruvbox") -- Colorscheme
-- require("plugins.treesitter") -- Treesitter stuff
-- require("plugins.comment") -- Comment shortcuts
-- require("plugins.mini-files") -- File explorer
-- require("plugins.mini-notify") -- notify explorer
-- require("plugins.which-key") -- just which key
------------
---
---

require("core.lsp")

-- Setup the plugin manager
require("core.lazy")
