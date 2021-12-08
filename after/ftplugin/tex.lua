vim.opt_local.spell = true
local cmp = require "cmp"
vim.list_extend(lvim.lsp.override, { "texlab" })
require'lspconfig'.texlab.setup{
    cmd = { os.getenv("HOME").."/.local/share/nvim/lsp_servers/latex/texlab"},
    filetypes = {"tex", "bib"},
    settings = {
        texlab = {
            rootDirectory = nil,
            --      ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓ ↓
            -- build = _G.TeXMagicBuildConfig,
            --      ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑ ↑
            build = {
              args = { "-output-format=pdf", "-interaction=nonstopmode", "-shell-escape", "-synctex=1", "%f" },
              executable = "lualatex",
              forwardSearchAfter = false,
              onSave = false
            },
            forwardSearch = {
                executable = "zathura",
                args = {"%p"}
            }
        }
    }
}
cmp.setup.buffer {
  sources = {
    { name = "nvim_lua" },
    { name = "nvim_lsp" },
    { name = "treesitter" },
    { name = "vsnip" },
    { name = "spell" },
    {
      name = "buffer",
      options = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = "path" },
  },
}
vim.api.nvim_buf_set_keymap("0","n","<leader>lb",":TexlabBuild<CR>", {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>lv",":TexlabForward<CR>", {noremap = true})
