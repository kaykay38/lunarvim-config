-- vim.list_extend(lvim.lsp.override, { "html" })
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

local intelephense_opts = {
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/php/node_modules/intelephense/lib/intelephense.js","--stdio"},
    capabilities = capabilities,
    settings = {
        intelephense = {
            stubs = {
                "bcmath",
                "bz2",
                "calendar",
                "Core",
                "curl",
                "date",
                "dba",
                "dom",
                "enchant",
                "fileinfo",
                "filter",
                "ftp",
                "gd",
                "gettext",
                "hash",
                "iconv",
                "imap",
                "intl",
                "json",
                "ldap",
                "libxml",
                "mbstring",
                "mcrypt",
                "mysql",
                "mysqli",
                "password",
                "pcntl",
                "pcre",
                "PDO",
                "pdo_mysql",
                "Phar",
                "readline",
                "recode",
                "Reflection",
                "regex",
                "session",
                "SimpleXML",
                "soap",
                "sockets",
                "sodium",
                "SPL",
                "standard",
                "superglobals",
                "sysvsem",
                "sysvshm",
                "tokenizer",
                "xml",
                "xdebug",
                "xmlreader",
                "xmlwriter",
                "yaml",
                "zip",
                "zlib",
                "wordpress",
                "woocommerce",
                "acf-pro",
                "wordpress-globals",
                "wp-cli",
                "genesis",
                "polylang"
            },
            files = {
                maxSize = 5000000;
            }
        }
    },
    root_dir = lspconf.util.root_pattern("*.php","composer.json", ".git") or vim.fn.getcwd(),
}

local phpactor_opts = {
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/phpactor.tmp/bin/phpactor","language-server"},
    capabilities = capabilities,
    root_dir = lspconf.util.root_pattern("*.php","composer.json", ".git") or vim.fn.getcwd()
}

local html_opts = {
    cmd = {os.getenv("HOME").."/.local/share/nvim/lsp_servers/html/node_modules/.bin/vscode-html-language-server","--stdio"},
    filetypes = {"html", "php"},
    capabilities = capabilities,
    init_options =  {
    {
          configurationSection = { "html", "css", "javascript", "typescript", "php" },
          embeddedLanguages = {
            css = true,
            javascript = true
          },
          provideFormatter = true

        },
    },
    root_dir = lspconf.util.root_pattern("*.html", "*.php","composer.json", "jsconfig.json", "tsconfig.json", "package.json", "*.ts", "*.tsx", "*.js", "*.jsx", ".git") or vim.fn.getcwd()
}

require("lvim.lsp.manager").setup("phpactor", phpactor_opts)
require("lvim.lsp.manager").setup("intelephense", intelephense_opts)
require("lvim.lsp.manager").setup("html", html_opts)
