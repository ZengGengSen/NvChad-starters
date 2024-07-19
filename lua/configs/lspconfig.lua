-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "clangd",
  "cmake",
}

local on_init = function(_)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

local cmp_nvim_lsp = require "cmp_nvim_lsp"

local js_capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
js_capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.jsonls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = js_capabilities,
}
