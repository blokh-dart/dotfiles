local toggle_mini_files = function()
  local mini_files = require("mini.files")
  if not mini_files.close() then
    mini_files.open()
  end
end

return {
  { "echasnovski/mini.icons", opts = {} },
  {
    "echasnovski/mini.comment",
    version = false,
    opts = {
      mappings = {
        comment_line = "<leader>c<leader>",
        comment_visual = "<leader>c<leader>",
        textobject = "<leader>c",
      },
    },
  },
  {
    "echasnovski/mini.files",
    opts = {
      mappings = {
        close = "<esc>",
        go_in_plus = "<CR>",
        -- I swapped the following 2 (default go_out: h)
        -- go_out_plus: when you go out, it shows you only 1 item to the right
        -- go_out: shows you all the items to the right
        go_out = "H",
        go_out_plus = "h",
      },
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 80,
      },
      options = {
        -- Whether to use for editing directories
        -- Disabled by default in LazyVim because neo-tree is used for that
        use_as_default_explorer = true,
        -- If set to false, files are moved to the trash directory
        -- To get this dir run :echo stdpath('data')
        -- ~/.local/share/neobean/mini.files/trash
        permanent_delete = false,
      },
    },
    keys = {
      {
        "<leader>n<leader>",
        toggle_mini_files,
        desc = "Toggle mini files",
      },
    },
  },
}
