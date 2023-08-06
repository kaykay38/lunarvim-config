--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- VIM OPTIONS
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.showbreak = "↪>>> "
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.inccommand = "split"

-- STATUS LINE
lvim.builtin.lualine.sections.lualine_y = { "location" }
lvim.builtin.lualine.sections.lualine_z = { "progress" }
vim.opt.laststatus = 3

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- COLOR THEME
lvim.colorscheme = "lunar"
lvim.transparent_window = true
-- lvim.colorscheme = "nightfox"

-- AUTO COMPLETION
lvim.builtin.tabnine = { active = true }

-- GENERAL
lvim.log.level = "info"
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- KEYMAPPINGS <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

lvim.builtin.which_key.mappings["sw"] = { "bviw :call search#search_visual() | lua print('Searching Duckduckgo')<cr>",
    "Quick Websearch" }
lvim.builtin.which_key.vmappings["sw"] = { ":call search#search_visual() | lua print('Searching Duckduckgo')<cr>",
    "Quick Websearch" }
lvim.builtin.which_key.mappings["+"] = { ":resize +5<cr>", "Increase window height" }
lvim.builtin.which_key.mappings["_"] = { ":resize -5<cr>", "Decrease window height" }
lvim.builtin.which_key.mappings["="] = { ":vertical resize +5<cr>", "Increase window width" }
lvim.builtin.which_key.mappings["-"] = { ":vertical resize -5<cr>", "Decrease window width" }
lvim.builtin.which_key.mappings["a"] = { "ggVG", "Select all" }
lvim.builtin.which_key.mappings["n"] = {
    name = "Package manager",
    s = { "<cmd>lua require('package-info').show({force = true})<cr>", "Show package info" },
    c = { "<cmd>lua require('package-info').change_version()<cr>", "Change package version" },
    d = { "<cmd>lua require('package-info').delete()<cr>", "Delete package" },
    i = { "<cmd>lua require('package-info').install()<cr>", "Install new package" },
    r = { "<cmd>lua require('package-info').install()<cr>", "Reinstall package" },
}
lvim.builtin.which_key.mappings["r"] = {
    name = "REST client",
    r = { "<Plug>RestNvim", "Run request under cursor" },
    l = { "<Plug>RestNvimLast", "Re-run last request" },
    p = { "<Plug>RestNvimPreview", "Preview cURL command" }
}

-- COLEMAK NAVIGATION
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

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     exe = "eslint",
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- ADDITIONAL PLUGINS <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
    --     {
    --       "folke/trouble.nvim",
    --       cmd = "TroubleToggle",
    --     },
    --
    { "norcalli/nvim-colorizer.lua" },
    -- { "rktjmp/lush.nvim" },
    -- { "ellisonleao/gruvbox.nvim" },
    { "EdenEast/nightfox.nvim" },
    -- {"rebelot/kanagawa.nvim"},
    -- {"sainnhe/everforest"},
    { "voldikss/vim-browser-search" },
    { "Pocco81/AutoSave.nvim" },
    { "tpope/vim-surround" },
    { "windwp/nvim-ts-autotag" },
    { "vuki656/package-info.nvim" },
    { "kevinhwang91/nvim-bqf" },
    { "mattn/emmet-vim" },
    { "dccsillag/magma-nvim",             build = ":UpdateRemotePlugins" },
    { "brymer-meneses/grammar-guard.nvim" },
    { "iamcco/markdown-preview.nvim",     build = [[sh -c 'cd app && yarn install']], lazy = true, ft = "markdown" },
    { "dhruvasagar/vim-table-mode" },
    { "zbirenbaum/copilot.lua" }
    -- { "p00f/nvim-ts-rainbow" },
}

-- -- PLUGIN CONFIGURATIONS
-- require("nvim-treesitter.configs").setup {
--     rainbow = {
--         enable = true,
--         extended_mode = true,
--         max_file_lines = nil,
--     }
-- }

-- -- AUTOCOMMANDS (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
