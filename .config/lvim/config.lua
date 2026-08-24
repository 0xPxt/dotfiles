-- Rust IDE config (adapted from https://github.com/LunarVim/starter.lvim/blob/rust-ide/config.lua)
lvim.format_on_save = true
vim.diagnostic.config({ virtual_text = true })

lvim.builtin.treesitter.highlight.enable = true

lvim.builtin.nvimtree.setup.view.adaptive_size = true

-- auto install treesitter parsers
lvim.builtin.treesitter.ensure_installed = { "rust", "toml" }

-- use the already-installed system rust-analyzer instead of having mason install another copy
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })
require("lvim.lsp.manager").setup("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      check = { command = "clippy" },
      cargo = { allFeatures = true },
    },
  },
})

lvim.plugins = {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard", -- or "hard", "medium"
      -- other gruvbox options here
    },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {},
  },
}

lvim.colorscheme = "gruvbox"
