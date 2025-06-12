return {
  {
    "L3MON4D3/LuaSnip",
    build = (not vim.g.vscode) and "make install_jsregexp" or nil,
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  {
    "saghen/blink.cmp",
    version = "*",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
      snippets = { preset = "luasnip" },
      signature = { enabled = true },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "normal",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          cmdline = { min_keyword_length = 2 },
        },
      },
      keymap = {
        preset = "cmdline",
        ["<CR>"] = { "accept" },
        -- ["<CR>"] = { "accept_and_enter" }, -- Like JetBrains: confirm selection
        -- ["<Tab>"] = { "select_next" }, -- Next item
        -- ["<S-Tab>"] = { "select_prev" }, -- Previous item
        -- ["<Esc>"] = { "cancel" }, -- Close menu
        -- ["<C-Space>"] = { "trigger" }, -- Manual trigger
      },
      completion = {
        menu = {
          auto_show = true,
          border = "single",
          scrolloff = 1,
          scrollbar = false,
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "kind" },
              { "source_name" },
            },
          },
        },
        documentation = {
          window = {
            border = "single",
            scrollbar = false,
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,EndOfBuffer:Normal",
          },
          auto_show = true,
          auto_show_delay_ms = 300,
        },
      },
    },
  },
}
