dofile(vim.g.base46_cache .. "git")

local options = {
  -- signs = {
  --   add = { text = "│" },
  --   change = { text = "│" },
  --   delete = { text = "󰍵" },
  --   topdelete = { text = "‾" },
  --   changedelete = { text = "~" },
  --   untracked = { text = "│" },
  -- },

  -- on_attach = function(bufnr)
  --   local gs = package.loaded.gitsigns

  --   local function opts(desc)
  --     return { buffer = bufnr, desc = desc }
  --   end

  --   local map = vim.keymap.set

  --   map("n", "<leader>rh", gs.reset_hunk, opts "Reset Hunk")
  --   map("n", "<leader>ph", gs.preview_hunk, opts "Preview Hunk")
  --   map("n", "<leader>gb", gs.blame_line, opts "Blame Line")
  -- end,
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable = true,
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
}

return options
