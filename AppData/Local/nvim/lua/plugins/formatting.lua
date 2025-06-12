return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- Lazy-load on save
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "goimports", "golines", "gofmt" },
      markdown = { "deno_fmt" },
      json = { "deno_fmt" },
      yaml = { "deno_fmt" },
    },
    -- You could use built-in format_on_save instead of manual autocmd
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },
  },
}
