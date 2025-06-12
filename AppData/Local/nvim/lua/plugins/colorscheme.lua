return {
  "sainnhe/gruvbox-material",
  enabled = true,
  lazy = false,
  priority = 1000,
  init = function()
    vim.o.background = "dark"
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_enable_bold = true

    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "mix"
    vim.g.gruvbox_material_disable_italic_comment = false
    vim.g.gruvbox_material_transparent_background = 0
  end,
  config = function()
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
