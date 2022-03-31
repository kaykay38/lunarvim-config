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
vim.api.nvim_set_keymap('n',"<A-f>",":m .+1<cr>==",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('n',"<A-f>",":m .+1<cr>==",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('v',"<A-f>",":m '>+1<CR>gv=gv",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('v',"<A-d>",":m '<-2<CR>gv=gv",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('i',"<A-d>","<Esc>:m .-2<CR>==gi",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('i',"<A-f>","<Esc>:m .+1<CR>==gi",{ silent = true, noremap = true })
vim.api.nvim_set_keymap('i',"<A-f>","<Esc>:m .+1<CR>==gi",{ silent = true, noremap = true })
lvim.builtin.which_key.mappings["sw"] = {"bviw :call search#search_visual() | lua print('Searching Duckduckgo')<cr>", "Quick Websearch"}
lvim.builtin.which_key.vmappings["sw"] = {":call search#search_visual() | lua print('Searching Duckduckgo')<cr>", "Quick Websearch"}
lvim.builtin.which_key.mappings["+"] = {":resize +5<cr>", "Increase window height"}
lvim.builtin.which_key.mappings["_"] = {":resize -5<cr>", "Decrease window height"}
lvim.builtin.which_key.mappings["="] = {":vertical resize +5<cr>", "Increase window width"}
lvim.builtin.which_key.mappings["-"] = {":vertical resize -5<cr>", "Decrease window width"}

lvim.builtin.which_key.mappings["n"] = {
    name = "Package manager",
    s = {"<cmd>lua require('package-info').show({force = true})<cr>", "Show package info"},
    c = {"<cmd>lua require('package-info').change_version()<cr>", "Change package version"},
    d = {"<cmd>lua require('package-info').delete()<cr>", "Delete package"},
    i = {"<cmd>lua require('package-info').install()<cr>", "Install new package"},
    r = {"<cmd>lua require('package-info').install()<cr>", "Reinstall package"},
}

-- Colemak navigation
-- -- nnoremap u i
-- vim.api.nvim_set_keymap('n',"u","i",{ silent = true, noremap = true })
-- -- vnoremap u i
-- vim.api.nvim_set_keymap('v',"u","i",{ silent = true, noremap = true })
-- -- nnoremap u I
-- vim.api.nvim_set_keymap('n',"U","I",{ silent = true, noremap = true })
-- -- vnoremap u I
-- vim.api.nvim_set_keymap('v',"U","I",{ silent = true, noremap = true })
-- vim.api.nvim_set_keymap('',"U","I",{ silent = true, noremap = true })
-- -- nnoremap l u
-- vim.api.nvim_set_keymap('n',"l","u",{ silent = true, noremap = true })
-- -- vnoremap l u
-- vim.api.nvim_set_keymap('v',"l","u",{ silent = true, noremap = true })
-- -- nnoremap L U
-- vim.api.nvim_set_keymap('n',"L","U",{ silent = true, noremap = true })
-- -- vnoremap L U
-- vim.api.nvim_set_keymap('v',"L","U",{ silent = true, noremap = true })
-- -- " right hand nav
-- -- nnoremap n j
-- vim.api.nvim_set_keymap('n',"n","j",{ silent = true, noremap = true })
-- -- vnoremap n j
-- vim.api.nvim_set_keymap('v',"n","j",{ silent = true, noremap = true })
-- -- nnoremap e k
-- vim.api.nvim_set_keymap('n',"e","k",{ silent = true, noremap = true })
-- -- vnoremap e k
-- vim.api.nvim_set_keymap('v',"e","k",{ silent = true, noremap = true })
-- -- nnoremap e k
-- vim.api.nvim_set_keymap('n',"E","K",{ silent = true, noremap = true })
-- -- vnoremap e k
-- vim.api.nvim_set_keymap('v',"E","K",{ silent = true, noremap = true })
-- -- nnoremap i l
-- vim.api.nvim_set_keymap('n',"i","l",{ silent = true, noremap = true })
-- -- vnoremap i l
-- vim.api.nvim_set_keymap('v',"i","l",{ silent = true, noremap = true })
-- -- nnoremap k n
-- vim.api.nvim_set_keymap('n',"k","n",{ silent = true, noremap = true })
-- -- nnoremap K N
-- vim.api.nvim_set_keymap('n',"K","N",{ silent = true, noremap = true })
-- -- " m goes to insert mode, or with shift at beginning of line
-- -- -- nnoremap m i
-- -- vim.api.nvim_set_keymap('n',"m","i",{ silent = true, noremap = true })
-- -- -- nnoremap M I
-- -- vim.api.nvim_set_keymap('n',"M","k",{ silent = true, noremap = true })

-- -- " shift+i does nothing
-- -- nnoremap I <nop>
-- vim.api.nvim_set_keymap('n',"I","<nop>",{ silent = true, noremap = true })
-- END Colemak navigation

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
lvim.builtin.alpha.active = true
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
    {"vuki656/package-info.nvim"},
    {"kevinhwang91/nvim-bqf"},
    {"mattn/emmet-vim"},
    {"dccsillag/magma-nvim", run = ":UpdateRemotePlugins"},
    {"iamcco/markdown-preview.nvim", run = [[sh -c 'cd app && yarn install']], opt = true, ft = "markdown"},
    {"dhruvasagar/vim-table-mode"},
}
require'colorizer'.setup()
require'autosave'.setup()

require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("typescript", { "typescriptreact" })

require('luasnip').filetype_extend("javascript", { "html", "css" })
require('luasnip').filetype_extend("typescript", { "html", "css" })


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
