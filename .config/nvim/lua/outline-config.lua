-- https://github.com/hedyhli/outline.nvim
require('outline').setup({
  outline_window = {
    width = 15,
    relative = false,
  },
  outline_items = {
    -- Whether to automatically set cursor location in outline to match
    -- location in code when focus is in code. If disabled you can use
    -- `:OutlineFollow[!]` from any window or `<C-g>` from outline window to
    -- trigger this manually.
    auto_set_cursor = false,
    -- Autocmd events to automatically trigger these operations.
    auto_update_events = {
      -- Includes both setting of cursor and highlighting of hovered item.
      -- The above two options are respected.
      -- This can be triggered manually through `follow_cursor` lua API,
      -- :OutlineFollow command, or <C-g>.
      -- follow = { 'CursorMoved' },
      follow = { },
    },
  },
  preview_window = {
    live = true
  },
  keymaps = {
    -- These fold actions are collapsing tree nodes, not code folding
    fold_open = 'h',
    fold_closed = 'H',
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
