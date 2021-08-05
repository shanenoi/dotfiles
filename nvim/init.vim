set clipboard+=unnamedplus
set tags=/tmp/tags
set relativenumber
set number
set autoread
set autowrite
set cursorline
hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE

let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_transparency=0.8
"___for mini map___
" let g:minimap_width = 8
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
let @f = ':e /tk€kbmp/indexggVGd:w:r!find€kb€kb€kbfi€kb€kb€kbfind . :w:w:w:w'
let @l = ':Lex:vert resize 50:e .iii'
let @w = ':call FloatWindow()'
let @s = ':!cp /home/shane/.config/nvim/script/curl.bash /tmp/curl.bash:e /tmp/curl.bash'
let g:C_SourceCodeExtensions  = 'h cc cp cxx cpp CPP c++ C i ii'
" let @l = ':Lex:vert resize 50:e .iiisj:ter watch -n2 -t -d ~/script/sysinfol'
" let @s = ':!cp /home/shane/.config/nvim/script/curl.bash /tmp/curl.bash:e /tmp/curl.bashsj:e /tmp/abc.json'

call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'wfxr/minimap.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

syntax on

colorscheme gruvbox

hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE

autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp
			\ source ~/.config/nvim/ftplugin/c.vim
autocmd BufNewFile,BufRead *.go 
			\ source ~/.config/nvim/ftplugin/go.vim
autocmd BufNewFile,BufRead *.java 
			\ source ~/.config/nvim/ftplugin/java.vim
autocmd BufNewFile,BufRead *.js 
			\ source ~/.config/nvim/ftplugin/javascript.vim
autocmd BufNewFile,BufRead *.py 
			\ source ~/.config/nvim/ftplugin/python.vim
