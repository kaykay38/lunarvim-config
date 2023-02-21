local lspconf = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

local opts = {
    capabilities = capabilities,
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics, {
             -- Disable virtual_text
             virtual_text = false
            }
        ),
    },
    root_dir = lspconf.util.root_pattern("Gemfile","*.rb",".git") or vim.fn.getcwd()
}

require("lvim.lsp.manager").setup("ruby_ls", opts)
require("lvim.lsp.manager").setup("solargraph", opts)
