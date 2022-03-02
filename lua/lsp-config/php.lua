local lspconf = require'lspconfig'
require'lspconfig'.intelephense.setup{
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/php/node_modules/intelephense/lib/intelephense.js","--stdio"},
    root_dir = lspconf.util.root_pattern("*.php","composer.json", ".git") or vim.fn.getcwd()
}

require'lspconfig'.phpactor.setup{
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/phpactor.tmp/bin/phpactor","language-server"},
    root_dir = lspconf.util.root_pattern("*.php","composer.json", ".git") or vim.fn.getcwd()
}
