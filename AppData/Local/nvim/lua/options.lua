local opt = vim.opt -- to set options

opt.clipboard = "unnamedplus" -- normal clipboard
opt.encoding = "utf-8" -- Set default encoding to UTF-8
opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.

-- disable backups
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Always draw sign column. Prevent buffer moving when adding/deleting sign.
opt.signcolumn = "yes:1"

opt.number = true -- Show line numbers
opt.rnu = true -- Show relative numbers
opt.numberwidth = 5 -- Make the gutter wider by default
opt.cc = "81" -- Color column

opt.hidden = true -- Enable background buffers

opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current

opt.cmdheight = 2
opt.showmode = false -- Don't display mode

opt.matchtime = 3 -- Show matching parenthesis a bit faster.
opt.hlsearch = true -- Highlight found searches
opt.ignorecase = true -- Ignore case
opt.smartcase = true
opt.gdefault = true
opt.inccommand = "split" -- Get a preview of replacements
opt.incsearch = true -- Shows the match while typing

opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.

opt.updatetime = 50 -- Shorter delay

opt.list = true -- Show invisble items
opt.listchars = "tab:»⋆,trail:⋆,nbsp:⋆" -- Display extra whitespace

-- Undo dir in .config/nvim/undo/
opt.undodir = vim.fn.stdpath("config") .. "/undo"
opt.undofile = true

-- Wrapping options
opt.formatoptions = "tc" -- wrap text and comments using textwidth
opt.formatoptions = opt.formatoptions + "r" -- continue comments when pressing ENTER in I mode
opt.formatoptions = opt.formatoptions + "q" -- enable formatting of comments with gq
opt.formatoptions = opt.formatoptions + "n" -- detect lists for formatting
opt.formatoptions = opt.formatoptions + "b" -- auto-wrap in insert mode, and do not wrap old long lines

opt.showcmd = true -- Display incomplite commands
opt.ruler = true -- Show the cursor position all the time

-- Make diffing better: https://vimways.org/2018/the-power-of-diff/
opt.diffopt = opt.diffopt + "algorithm:patience"
opt.diffopt = opt.diffopt + "indent-heuristic"

opt.mouse = "a" -- Add mouse support

opt.scrolloff = 10 -- Try to keep cursor in the middle
opt.sidescrolloff = 10
