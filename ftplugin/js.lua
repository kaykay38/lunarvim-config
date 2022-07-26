local lspconf = require("lspconfig")
local eslint_opts  = {
    root_dir = lspconf.util.root_pattern("*.js") or vim.fn.getcwd()
}
require("lvim.lsp.manager").setup("eslint", eslint_opts)
