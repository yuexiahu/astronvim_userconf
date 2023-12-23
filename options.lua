-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = false, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    autoindent = true, -- enable autoindent
    backspace = "indent,eol,start", -- allow backspacing over everything in insert mode
    encoding = "utf-8", -- set encoding
    fileencoding = "utf-8", -- set fileencoding
    fileencodings = "ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1", -- set fileencodings
    swapfile = false,

    -- gui options
    guifont = "JetBrainsMonoNL NF:h11", -- font for vim gui
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    clipboard = {
      name = "win32yank-wsl",
      copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
      },
      paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
      },
      cache_enabled = false,
    }, -- use system clipboard

    -- gui options
    terminal_color_0 = "#1e222a", -- color for terminal background
    terminal_color_1 = "#e06c75", -- color for terminal foreground
    terminal_color_2 = "#98c379", -- color for terminal color 2
    terminal_color_3 = "#e5c07b", -- color for terminal color 3
    terminal_color_4 = "#61afef", -- color for terminal color 4
    terminal_color_5 = "#c678dd", -- color for terminal color 5
    terminal_color_6 = "#56b6c2", -- color for terminal color 6
    terminal_color_7 = "#abb2bf", -- color for terminal color 7
    terminal_color_8 = "#5c6370", -- color for terminal color 8
    terminal_color_9 = "#e06c75", -- color for terminal color 9
    terminal_color_10 = "#98c379", -- color for terminal color 10
    terminal_color_11 = "#e5c07b", -- color for terminal color 11
    terminal_color_12 = "#61afef", -- color for terminal color 12
    terminal_color_13 = "#c678dd", -- color for terminal color 13
    terminal_color_14 = "#56b6c2", -- color for terminal color 14
    terminal_color_15 = "#ffffff", -- color for terminal color 15
    terminal_color_background = "#1e222a", -- color for terminal background
    terminal_color_foreground = "#abb2bf", -- color for terminal foreground
    terminal_color_cursor = "#abb2bf", -- color for terminal cursor
    terminal_color_cursor_foreground = "#abb2bf", -- color for terminal cursor foreground
    terminal_color_highlight = "#4b5263", -- color for terminal highlight
    terminal_color_highlight_foreground = "#abb2bf", -- color for terminal highlight foreground
    neovide_padding_top = 1,
    neovide_padding_bottom = 1,
    neovide_padding_right = 1,
    neovide_padding_left = 1,
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
