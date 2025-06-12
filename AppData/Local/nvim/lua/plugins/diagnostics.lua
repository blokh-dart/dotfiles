return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    init = function()
      vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
    end,
    opts = {
      preset = "simple",

      transparent_bg = true, -- Set the background of the diagnostic to transparent
      transparent_cursorline = true, -- Set the background of the cursorline to transparent (only one the first diagnostic)

      options = {
        -- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
        show_source = {
          enabled = false,
          if_many = true,
        },
      },
    },
  },
}
