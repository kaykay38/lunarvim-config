local lspconf = require("lspconfig")
local sqlls_opts  = {
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/sqlls/node_modules/sql-language-server/npm_bin/cli.js","--stdio"},
    root_dir = lspconf.util.root_pattern("*.sql") or vim.fn.getcwd()
}
require("lvim.lsp.manager").setup("sqlls", sqlls_opts)
