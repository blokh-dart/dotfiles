-- Map leader to space
vim.g.mapleader = " "

-- Swap : -> . . -> ; ; -> :
map({ "n", "v" }, ";", ":")
map({ "n", "v" }, ".", ";")
map({ "n", "v" }, ":", ".")

map("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })

-- SPLITS
-- Navigate between splits easily
map("n", "<leader>h", "<cmd>wincmd h<CR>", { desc = "Move to left split" })
map("n", "<leader>j", "<cmd>wincmd j<CR>", { desc = "Move to lower split" })
map("n", "<leader>k", "<cmd>wincmd k<CR>", { desc = "Move to upper split" })
map("n", "<leader>l", "<cmd>wincmd l<CR>", { desc = "Move to right split" })

-- Better split management shortcuts
-- stylua: ignore start
map("n", "<leader>ws", vim.cmd.vsplit, { desc = "Vertical split" })
map("n", "<leader>wv", vim.cmd.split, { desc = "Horizontal split" }) -- Maybe change to belowright?
map("n", "<leader>ww", function() vim.cmd.wincmd("=") end, { desc = "Equalize split sizes" })
map("n", "<leader>wm", function() vim.cmd.wincmd("_") vim.cmd.wincmd("|") end, { desc = "Maximize current split" })
-- stylua: ignore end

-- Make resizing splits more friendly -- HOW TO MAKE THIS WORK IN MAC?
map("n", "<C-Left>", "<cmd>vertical resize +3<CR>", { desc = "Increase width" })
map("n", "<C-Right>", "<cmd>vertical resize -3<CR>", { desc = "Decrease width" })
map("n", "<C-Up>", "<cmd>resize +3<CR>", { desc = "Increase height" })
map("n", "<C-Down>", "<cmd>resize -3<CR>", { desc = "Decrease height" })

-- Navigate between tabs easily
map("n", "<leader>b", "<cmd>tabprevious<CR>", { desc = "Go to previous tab" })
map("n", "<leader>m", "<cmd>tabnext<CR>", { desc = "Go to next tab" })
-- New tab
map("n", "<leader>tN", ":tabnew ", { desc = "Open new tab" })

-- Make Y yank to end of the line (like D and C)
map("n", "Y", "y$", { desc = "Yank to end of line" })

local function smart_goto()
  local params = vim.lsp.util.make_position_params(nil, "utf-16")
  vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result, _, _)
    if result and not vim.tbl_isempty(result) then
      -- If there's a definition, go to it
      vim.lsp.buf.definition()
    else
      -- If already at definition, show references
      vim.lsp.buf.references()
    end
  end)
end
map("n", "<leader>gd", smart_goto, { desc = "Smart Go to definition/usages" })

-- Contextual go-to-definition or references

-- Keep your other mappings
map("n", "<leader>gu", vim.lsp.buf.implementation, { desc = "Go to implementations" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
-- LSP keymaps
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>gu", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "<leader>rr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map({ "i", "n" }, "<A-CR>", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })

-- Markdown preview
map("n", "<leader>xp", "<cmd>MarkdownPreview", { desc = "Markdown Preview" })
