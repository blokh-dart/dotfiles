return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "gruvbox-material",
    },
    sections = {
      lualine_x = { "encoding", "lsp_status", "filetype" },
    },
  },
}
