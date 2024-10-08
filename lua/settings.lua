----------------------
-- General Settings --
----------------------
vim.o.mouse          = 'a'                -- Enable mouse support
vim.o.modeline       = false              -- Disable modeline
vim.o.secure         = true               -- No commands in .nvimrc, .exrc
vim.o.hidden         = true               -- Allow hidden buffers
--vim.o.spell         = true                -- Enable spell checking
vim.o.startofline    = false              -- Try to preserve cursor column
vim.o.backspace      = 'indent,eol,start' -- Backspace deletes across lines and indents
vim.o.history        = 100                -- History size
vim.o.matchpairs     = '(:),{:},[:],<:>'  -- Characters that form pairs
vim.o.clipboard      = 'unnamedplus'      -- Use '+' register for clipboard
vim.o.completeopt    = 'menu,menuone,noselect'
vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'
vim.o.diffopt        = 'internal,filler,algorithm:histogram,indent-heuristic'
vim.o.wildignore     = '*.o,*~,*.obj,*.dylib,*.bin,*.dll,*.exe,*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**,*/node_modules/*,*/bin/*,*/obj/*,*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tif,*.ico,*.webp,*.doc,*.pdf,*.ppt,*.xls,*.pyc,*.pkl,*pycache*,*.DS_Store,*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv,*.7z,*.rar,*.tar,*.zip'
vim.o.wildignorecase = true
vim.o.wildmode       = 'longest:full'
vim.o.timeout        = true
vim.o.timeoutlen     = 300

-------------
-- Backups --
-------------
vim.o.backup         = false              -- Do not keep backup file after write
--vim.o.writebackup    = true               -- Create backup and keep until file is written
vim.o.swapfile       = false              -- Disable swap files
vim.o.undofile       = false              -- Disable persistent undo

-------------------
-- File encoding --
-------------------
vim.o.fileformat     = 'unix'             -- Use unix EOL
vim.o.fileformats    = 'unix,dos'
vim.o.encoding       = 'utf-8'            -- Use UTF-8
vim.o.fileencoding   = 'utf-8'            -- Use UTF-8
vim.o.fileencodings  = 'ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1'
vim.o.nrformats      = 'bin,hex,alpha'    -- Number formats for increment/decrement

--------------------------
-- Spaces, Tabs, Indent --
--------------------------
vim.o.tabstop     = 2     -- Number of visual spaces per tab
vim.o.softtabstop = 2     -- Number of spaces in tab
vim.o.shiftwidth  = 2     -- Indent width
vim.o.shiftround  = true  -- Round indents to specified indent width
vim.o.expandtab   = true  -- Use spaces for tabs
vim.o.joinspaces  = false -- Use one space (not two) after punctuation and when joining
vim.o.breakindent = true  -- Preserve indentation for wrapped lines

---------------------------
-- Searching & Replacing --
---------------------------
vim.o.incsearch  = true      -- Enable incremental search
vim.o.hlsearch   = true      -- Highlight search matches
vim.o.ignorecase = true      -- Case-insensitive search by default
vim.o.smartcase  = true      -- Switch to case-sensitive search if there's capital letter
vim.o.inccommand = 'nosplit' -- Live substitute preview

--------
-- UI --
--------
vim.o.termguicolors  = true    -- Enable 24 bit colors
vim.o.number         = true    -- Show line numbers
vim.o.relativenumber = true    -- Show line relative numbers
vim.o.cursorline     = true    -- Highlight cursor line
vim.o.wildmenu       = true    -- Enable visual completion menu
vim.o.pumblend       = 15      -- Pop-up menu transparency
vim.o.showmatch      = false   -- Disable jump to matching bracket
--vim.o.laststatus     = 2       -- Always show status line
vim.o.ruler          = true    -- Show cursor position
--vim.o.wrap           = false   -- Don't wrap lines by default
vim.o.showmode       = false   -- Don't show mode
vim.o.splitbelow      = true
vim.o.splitright     = true    -- Vertical split to the right
vim.o.linebreak      = true    -- Wrap on word boundary
vim.o.showbreak      = '↪ '    -- Wrapped line indicator
vim.o.listchars      = 'eol:↲,nbsp:␣,tab:▸→,extends:❯,precedes:❮,trail:∙' -- Characters to display for invisible characters
vim.o.fillchars      = 'eob: ' -- Customise fill characters

------------
-- Others --
------------
-- Disable some built-in plugins
local disabled_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(disabled_plugins) do
  vim.g["loaded_" .. plugin] = 1
end
