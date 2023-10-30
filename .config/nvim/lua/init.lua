-- Setup language servers
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}

-- Setup outline and tree view
-- require('aerial').setup()
require("symbols-outline").setup({
    autofold_depth = 2,
    -- symbol_blacklist = {"Variable", "Constant"}
})
