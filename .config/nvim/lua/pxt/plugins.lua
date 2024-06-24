local vim = vim
local Plug = vim.fn['plug#']

-- -=-=-= Plugins =-=-=-
vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')

Plug('nvim-telescope/telescope-fzf-native.nvim', 
    { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --build build --config Release && cmake --install build --prefix build' }) 
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

Plug('sainnhe/gruvbox-material')

Plug('L3MON4D3/LuaSnip', {['tag'] = 'v2.3.0', ['do'] = 'make install_jsregexp'})

Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'ranjithshegde/ccls.nvim'

Plug 'windwp/nvim-autopairs'

Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug('akinsho/toggleterm.nvim', {['tag'] = 'v2.11.0'})

Plug 'feline-nvim/feline.nvim'

vim.call('plug#end')
-- -=-=-=-=-=-=-=-=-=-=-

require'lspconfig'.ccls.setup{}
require("ccls").setup({lsp = {use_defaults = true}})
require("nvim-autopairs").setup{}
require("toggleterm").setup{}
require('feline').setup()
