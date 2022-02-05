require("lspconfig")["tsserver"].setup() {
    cmd = { "~/.local/share/nvim/lsp_servers/tsserver/node_modules/.bin/typescript-language-server", "--stdio" },
}
