local add = MiniDeps.add

add({
    source = 'nvim-treesitter/nvim-treesitter',
    hooks = { post_checkout = function() vim.cmd('TSUpdate') end },
})
add({
    source = "nvim-treesitter/nvim-treesitter-textobjects" ,
})
add({
    source = "nvim-treesitter/nvim-treesitter-context"  ,
})


require("nvim-treesitter.configs").setup({
  ignore_install = {},
  modules = {},
  ensure_installed = {
    "vimdoc",
     "c",
    "go",
    "lua",
    "regex",
    "bash",
    "markdown",
    "markdown_inline",
    "yaml",
    "json",
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  indent = {
    enable = true,
  },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Enter>", -- set to `false` to disable one of the mappings
      node_incremental = "<Enter>",
      scope_incremental = false,
      node_decremental = "<Backspace>",
    },
  },
})


require("treesitter-context").setup({
  max_lines = 3,
  mode = "cursor",
})

