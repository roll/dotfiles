-- https://github.com/hedyhli/outline.nvim
require('outline').setup({
  preview_window = {
    live = true
  },
  keymaps = {
    -- These fold actions are collapsing tree nodes, not code folding
    fold_toggle = 'l'
  },
  symbols = {
    filter = { 'String', exclude=true }
  },
  symbol_folding = {
    -- When to auto unfold nodes
    auto_unfold = {
      -- Auto unfold currently hovered symbol
      hovered = false,
      -- Auto fold when the root level only has this many nodes.
      -- Set true for 1 node, false for 0.
      only = false,
    },
  }
})