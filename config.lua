-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- Appearance
-- vim.cmd("set term=builtin_ansi")

-- general
lvim.log.level = "warn"
lvim.transparent_window = true
lvim.colorscheme = "gruvbox"
lvim.builtin.lualine.sections.lualine_y = {"location"}
lvim.builtin.lualine.sections.lualine_z = {"progress"}
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.showbreak = "↪>>> "
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.inccommand = "split"
-- auto completion
lvim.builtin.tabnine = { active = true }
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader>x"] = ":BufferClose<cr>"
vim.api.nvim_set_keymap('n',"<A-f>",":m .+1<cr>==",{ silent = true })
vim.api.nvim_set_keymap('n',"<A-f>",":m .+1<cr>==",{ silent = true })
vim.api.nvim_set_keymap('v',"<A-f>",":m '>+1<CR>gv=gv",{ silent = true })
vim.api.nvim_set_keymap('v',"<A-d>",":m '<-2<CR>gv=gv",{ silent = true })
vim.api.nvim_set_keymap('i',"<A-d>","<Esc>:m .-2<CR>==gi",{ silent = true })
vim.api.nvim_set_keymap('i',"<A-f>","<Esc>:m .+1<CR>==gi",{ silent = true })
vim.api.nvim_set_keymap('i',"<A-f>","<Esc>:m .+1<CR>==gi",{ silent = true })
-- add your own keymapping
lvim.builtin.which_key.mappings["sw"] = {"bviw :call search#search_visual() | lua print('Searching Duckduckgo')<cr>", "Quick Websearch"}
lvim.builtin.which_key.mappings["sw"] = {":call search#search_visual() | lua print('Searching Duckduckgo')<cr>", "Quick Websearch"}
lvim.builtin.which_key.mappings["+"] = {":resize +5<cr>", "Increase window height"}
lvim.builtin.which_key.mappings["_"] = {":resize -5<cr>", "Decrease window height"}
lvim.builtin.which_key.mappings["="] = {":vertical resize +5<cr>", "Increase window width"}
lvim.builtin.which_key.mappings["-"] = {":vertical resize -5<cr>", "Decrease window width"}

-- Colemak navigation
-- lvim.keys.normal_mode["<C-i>"] = ":wincmd l<cr>"
-- lvim.keys.normal_mode["<C-n>"] = ":wincmd j<cr>"
-- lvim.keys.normal_mode["<C-e>"] = ":wincmd k<cr>"
-- lvim.keys.normal_mode["<C-j>"] = "<NOP>"
-- lvim.keys.normal_mode["<C-k>"] = "<NOP>"
-- lvim.keys.normal_mode["<C-l>"] = "<NOP>"
-- lvim.keys.insert_mode["A-e"] = "<ESC>"
-- lvim.keys.normal_mode["j"] = "n"
-- lvim.keys.normal_mode["l"] = "i"
-- lvim.keys.normal_mode["L"] = "I"
-- lvim.keys.normal_mode["k"] = "n"
-- lvim.keys.normal_mode["<S-k>"] = "N"
-- lvim.keys.normal_mode["n"] = "j"
-- lvim.keys.normal_mode["N"] = "J"
-- lvim.keys.normal_mode["e"] = "k"
-- lvim.keys.normal_mode["E"] = "K"
-- lvim.keys.normal_mode["i"] = "l"
-- lvim.keys.visual_block_mode["n"] = "j"
-- lvim.keys.visual_block_mode["e"] = "k"
-- lvim.keys.visual_block_mode["i"] = "l"
-- lvim.keys.visual_mode["n"] = "j"
-- lvim.keys.visual_mode["e"] = "k"
-- lvim.keys.visual_mode["i"] = "l"
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["gn"] = "gj"
-- lvim.keys.normal_mode["ge"] = "gk"
-- lvim.keys.visual_block_mode["gn"] = "gj"
-- lvim.keys.visual_block_mode["ge"] = "gk"
-- lvim.keys.visual_mode["gn"] = "gj"
-- lvim.keys.visual_mode["ge"] = "gk"
-- unmap a default keymapping

-- edit a default keymapping

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
-- lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
lvim.format_on_save = false
lvim.lint_on_save = true
lvim.lsp.diagnostics.virtual_text = false

require('luasnip').filetype_extend("javascript", { "javascriptreact" })

require('luasnip').filetype_extend("javascript", { "html" })



-- Additional Plugins
lvim.plugins = {
    {"norcalli/nvim-colorizer.lua"},
    {"rktjmp/lush.nvim"},
    -- {"rebelot/kanagawa.nvim"},
    -- {"sainnhe/everforest"},
    {"ellisonleao/gruvbox.nvim"},
    {"voldikss/vim-browser-search"},
    {"Pocco81/AutoSave.nvim"},
    {"tpope/vim-surround"},
    {"windwp/nvim-ts-autotag"},
    {"kevinhwang91/nvim-bqf"},
    {"mattn/emmet-vim"},
    {"dccsillag/magma-nvim", run = ":UpdateRemotePlugins"},
    {"iamcco/markdown-preview.nvim"},
    {"dhruvasagar/vim-table-mode"},
}
require'nvim-ts-autotag'.setup()
require'colorizer'.setup()
require'autosave'.setup()
require'lsp-config.swift'
require'lsp-config.php'

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
