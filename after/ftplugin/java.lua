-- require'lspconfig'.jdtls.setup{
--     cmd = {"/usr/lib/jvm/java-17-openjdk/bin/java -Declipse.application=org.eclipse.jdt.ls.core.id1 -Dosgi.bundles.defaultStartLevel=4 -Declipse.product=org.eclipse.jdt.ls.core.product -Dlog.protocol=true -Dlog.level=ALL -Xms1g -Xmx2G -jar /home/mia/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar -configuration /home/mia/.local/share/nvim/lsp_servers/jdtls/config_linux -data /home/mia/workspace --add-modules=ALL-SYSTEM --add-opens java.base/java.util=ALL-UNNAMED --add-opens java.base/java.lang=ALL-UNNAMED"},
-- }
-- local cmp = require "cmp"
-- cmp.setup.buffer {
--   sources = {
--     { name = "nvim_lsp" },
--     { name = "treesitter" },
--     { name = "vsnip" },
--     { name = "spell" },
--     {
--       name = "buffer",
--       opts = {
--         get_bufnrs = function()
--           return vim.api.nvim_list_bufs()
--         end,
--       },
--     },
--     { name = "path" },
--   },
-- }
local function get_java_run_in_sp_term ()
    local name = vim.api.nvim_eval('expand(\"%:r\")')
    local class_path = name:gsub("src/", "")
    class_path = class_path:gsub("/",".")
    return ":sp | term java -cp bin "..class_path
end



-- vim.api.nvim_buf_set_keymap("0","n","<leader>r",":lua print(vim.api.nvim_eval('expand(\"%:r\")')<cr>", {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>lb",":make<CR>|:copen<cr>", {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>r",get_java_run_in_sp_term(), {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>lco",":copen<CR>", {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>lcj",":cnext<CR>", {noremap = true})
vim.api.nvim_buf_set_keymap("0","n","<leader>lck",":cprev<CR>", {noremap = true})
