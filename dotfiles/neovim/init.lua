vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.shiftwidth = 4
vim.o.wrap = false
vim.o.expandtab = true
vim.o.swapfile = false
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':Oil<CR>')
vim.keymap.set('n', '<leader>f', ':Pick files<CR>')

--Cosmetics
vim.pack.add({
    --Themes
    { src = "https://github.com/bluz71/vim-nightfly-colors" },
    { src = "https://github.com/catppuccin/nvim"},
    { src ="https://github.com/folke/tokyonight.nvim"},
    { src = "https://github.com/tribela/transparent.nvim"},
    --Plugins
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/L3MON4D3/LuaSnip"},
    { src = "https://github.com/rafamadriz/friendly-snippets"},
    { src = "https://github.com/saghen/blink.cmp"},
    { src = "https://github.com/mfussenegger/nvim-jdtls"},
    { src = "https://github.com/nvim-mini/mini.pick"},
    { src = "https://github.com/stevearc/oil.nvim"}
})

vim.cmd("colorscheme tokyonight")

vim.lsp.enable('lua_ls')
vim.lsp.enable('jdtls')
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('gopls')
vim.lsp.enable('ts_ls')

vim.cmd("set completeopt+=noselect")

require('mini.pick').setup()
require('oil').setup()
--ENABLE TRANSPARENCY!
require('transparent').setup()
require'luasnip.loaders.from_vscode'.load{ exclude = {},}

require("blink.cmp").setup({
    signature = { enabled = true },
    completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 250 },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})
