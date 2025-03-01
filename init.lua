local opt          = vim.opt
local cmd          = vim.cmd
local g            = vim.g

--- Line Number
opt.number         = true
opt.relativenumber = false
--- UI
opt.numberwidth    = 4 -- line number width
opt.signcolumn     = "yes"
opt.cmdheight      = 1 -- more space in the neovim command line for displaying messages
opt.showcmd        = false
opt.ruler          = false
opt.laststatus     = 3
--- Search
opt.hlsearch       = true
opt.ignorecase     = true -- ignore case in search patterns
opt.smartcase      = true
--- Indentation
opt.foldmethod     = "indent" -- folding set to "expr" for treesitter based folding
opt.foldexpr       = ""       -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
opt.smartindent    = true
opt.expandtab      = true     -- Use spaces instead of tabs
--- Mouse
opt.mouse          = 'a'
opt.mousemoveevent = true
opt.scrolloff      = 8 -- scrolloff offset
opt.sidescrolloff  = 8 -- sidescrolloff offset
--- Spellchecking
opt.spell          = false
opt.spelllang      = { "en" } -- Enable spellchecking for en
--- Tab size
opt.tabstop        = 4
opt.shiftwidth     = 4
--- Colorscheme
opt.background     = "dark"
g.colors_name      = "evening"
cmd("colorscheme evening")
--- Splitting
--opt.splitkeep     = "screen" -- It's about :split
opt.splitbelow    = true -- force all horizontal splits to go below current window
opt.splitright    = true -- force all vertical splits to go to the right of current window
--- Others
opt.wrap          = false
opt.whichwrap     = "" -- wrap to next line
opt.undofile      = true
opt.undolevels    = 10000
opt.updatetime    = 200                 -- Save swap file and trigger CursorHold
opt.backup        = false
opt.wildmode      = "longest:full,full" -- Command-line completion mode
opt.completeopt   = "menu,menuone,noselect"
opt.winminwidth   = 5                   -- Minimum window width
opt.clipboard     = "unnamedplus"       -- Sync with system clipboard
opt.conceallevel  = 0                   -- so that `` is visible in markdown files
opt.confirm       = true                -- Confirm to save changes before exiting modified buffer
opt.cursorline    = true                -- Enable highlighting of the current line
opt.termguicolors = true

opt.spelllang:append "cjk" -- disable spellchecking for asian characters (VIM algorithm does not support it)
opt.shortmess:append "c"   -- don't show redundant messages from ins-completion-menu
-- TODO: Intro message
-- opt.shortmess:append "I"   -- don't show the default intro message
opt.whichwrap:append "<,>,[,],h,l"
-- opt.autowrite = true -- Enable auto write
-- opt.shortmess:append({ C = true })
--

g.mapleader                  = ' ' -- Space as leader key
g.markdown_recommended_style = 0   -- Fix markdown indentation settings
