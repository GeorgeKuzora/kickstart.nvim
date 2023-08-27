-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Declaring local variables to reduce amount of typing
local g   = vim.g
local o   = vim.o
local wo  = vim.wo
local opt = vim.opt
local a   = vim.api

-- set vim options here (vim.<first_key>.<second_key> = value)
vim.cmd [[set keymap=russian-jcukenwin]]
vim.cmd [[set iminsert=0]]
vim.cmd [[set imsearch=0]]
vim.cmd [[highlight lCursor guifg=NONE guibg=cyan]]
vim.cmd [[set grepprg=rg\ --vimgrep\ --smart-case\ --follow]] -- Better grep command

-- catppuccin ts_rainbow2 colors, comment for another theme
vim.cmd [[highlight TSRainbowRed guifg=#f38ba8 ctermfg=Red]]
vim.cmd [[highlight TSRainbowYellow guifg=#f9e2af ctermfg=Yellow]]
vim.cmd [[highlight TSRainbowBlue guifg=#89b4fa ctermfg=Blue]]
vim.cmd [[highlight TSRainbowOrange guifg=#cdd6f4 ctermfg=White]]
vim.cmd [[highlight TSRainbowViolet guifg=#cba6f7 ctermfg=Magenta]]
vim.cmd [[highlight TSRainbowCyan guifg=#74c7ec ctermfg=Cyan]]

-- rose-pine ts_rainbow2 colors, comment for another theme
-- vim.cmd[[highlight TSRainbowRed guifg=#eb6f92 ctermfg=Red]]
-- vim.cmd[[highlight TSRainbowYellow guifg=#f6c177 ctermfg=Yellow]]
-- vim.cmd[[highlight TSRainbowBlue guifg=#3e8fb0 ctermfg=Blue]]
-- vim.cmd[[highlight TSRainbowOrange guifg=#ea9a97 ctermfg=White]]
-- vim.cmd[[highlight TSRainbowViolet guifg=#c4a7e7 ctermfg=Magenta]]
-- vim.cmd[[highlight TSRainbowCyan guifg=#e0def4 ctermfg=Cyan]]
-- autocmd ColorSchemePre rose-pine

-- Enable break indent
o.breakindent = true

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true
-- highlihting and search
opt.hlsearch = true                               -- With highlight search
opt.ignorecase = true                             -- Search ignoring case of letters
opt.smartcase = true                              -- Search with ignor case if all small and with case if even one is big
opt.incsearch = true                              -- Search incrementaly when you input request
opt.wrapscan = true                               -- Cycle search results until the end and then move to the beginning
-- indentation
opt.autoindent = true                             -- auto indention
opt.smartindent = true                            -- smart indention
opt.expandtab = true                              -- create spaces from tab
opt.shiftround = true                             -- When shifting lines, round the indentation to the nearest multiple of shiftwidth.
opt.shiftwidth = 4                                -- When shifting, indent using four spaces.
opt.smarttab = true                               -- Insert “tabstop” number of spaces when the “tab” key is pressed.
opt.tabstop = 4                                   -- Indent using four characters.
opt.softtabstop = 4                               -- Indent using four spaces.
-- lines
opt.display = 'lastline'                          -- Always try to show a paragraph’s last line.
opt.encoding = 'utf-8'                            -- Use an encoding that supports unicode.
opt.fileencoding = 'utf-8'                        -- The encoding written to file
opt.wrap = false                                  -- Enable line wrapping.
opt.linebreak = true                              -- Avoid wrapping a line in the middle of a word.
opt.scrolloff = 8                                 -- The number of screen lines to keep above and below the cursor.
opt.sidescrolloff = 5                             -- The number of screen columns to keep to the left and right of the cursor.
opt.syntax = 'enable'                             -- Enable syntax higlihting
-- display
wo.number = true                                  -- Show line numbers on the sidebar.
opt.relativenumber = true                         -- Show line number on the current line and relative numbers on all other lines.
opt.laststatus = 2                                -- Always display the status bar.
opt.ruler = true                                  -- Always show cursor position.
opt.wildmenu = true                               -- Display command line’s tab complete options as a menu.
opt.tabpagemax = 50                               -- Maximum number of tab pages that can be opened from the command line.
opt.errorbells = false                            -- Disable beep on errors.
opt.visualbell = true                             -- Flash the screen instead of beeping on errors.
opt.title = true                                  -- set the window’s title, reflecting the file currently being edited.
-- folding
opt.foldmethod = 'indent'                         -- Fold based on indention levels.
opt.foldnestmax = 3                               -- Only fold up to three nested levels.
opt.foldenable = true                             -- Enable folding by default.
-- undoing
opt.autoread = true                               -- Automatically re-read files if unmodified inside Vim.
opt.backspace = { 'indent', 'eol', 'start' }      -- Allow backspacing over indention, line breaks and insertion start.
opt.dir = '/home/georgiy/.cache/nvim'             -- Directory to store backup files.
opt.undodir = '/home/georgiy/.cache/nvim/undodir' -- Set undofiles dir
opt.undofile = true                               -- Set undofiles
opt.confirm = true                                -- Display a confirmation dialog when closing an unsaved file.
opt.hidden = true                                 -- Hide files in the background instead of closing them.
opt.history = 10000                               -- Increase the undo limit.
opt.modeline = false                              -- Ignore file’s mode lines; use vimrc configurations instead.
opt.swapfile = false                              -- Disable swap files.
opt.shell = '/usr/bin/zsh'
opt.spell = false                                 --Enable spellchecking.
-- opt.spellfile = '/home/georgiy/.config/nvim/spell/ru.utf-8.add'
opt.spelllang = { 'ru_ru', 'en_us' }
-- otp.spelllang = 'en_us'
opt.wildignore = { '.pyc', '.swp' } -- Ignore files matching these patterns when opening files based on a glob pattern.
-- Colored colum
wo.signcolumn = "yes"               -- sets vim.opt.signcolumn to auto
opt.colorcolumn = '80'              -- colored line on 80 charachters
-- UI and windows
opt.mouse = 'a'                     -- Enable your mouse
opt.splitbelow = true               -- Horizontal splits will automatically be below
opt.splitright = true               -- Vertical splits will automatically be to the right
opt.termguicolors = true            -- Support true colors
opt.conceallevel = 0                -- So that I can see `` in markdown files
opt.cursorline = true               -- Enable highlighting of the current line
opt.backup = false                  -- This is recommended by coc
opt.writebackup = false             -- This is recommended by coc
-- automation
opt.clipboard = { 'unnamedplus' }   -- Copy paste between vim and everything else, 'unnamed'
opt.autochdir = false               -- Your working directory will always be the same as your working directory
opt.cp = false                      -- 'compatible' is not set
opt.formatoptions = "tcqj" .. "ro"
g.autoformat_enabled = true         -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
g.cmp_enabled = true                -- enable completion at start
g.autopairs_enabled = true          -- enable autopairs at start
g.diagnostics_mode = 3              -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
g.icons_enabled = true              -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
g.ui_notifications_enabled = true   -- disable notifications when toggling UI elements
