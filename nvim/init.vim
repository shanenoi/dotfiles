call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'itchyny/lightline.vim'
Plug 'wfxr/minimap.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'rakr/vim-one'
Plug 'lifepillar/vim-gruvbox8'
Plug 'dagwieers/asciidoc-vim'
call plug#end()

" colorscheme industry
colorscheme gruvbox8_hard
" colorscheme murphy
" execute 'set background=' . (strftime('%H') < 16 ? 'dark' : 'light')
set background=dark

" hi! TermCursor guifg=black guibg=white gui=NONE cterm=NONE
" hi! TermCursorNC guifg=black guibg=white gui=NONE cterm=NONE
" highlight Cursor guifg=black guibg=white
" highlight iCursor guifg=black guibg=white

set clipboard+=unnamedplus
set tags+=/tmp/tags
set relativenumber
set number
set autoread
set autowrite
set cursorline
set fileformat=unix
set colorcolumn=1000
" set mouse=a
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

let @f = ':e /tk€kbmp/indexggVGd:w:r!find€kb€kb€kbfi€kb€kb€kbfind . :w:w:w:w'
let @w = ':call FloatWindow()'
let @s = ':!cp /home/shane/.config/nvim/script/curl.bash /tmp/curl.bash:e /tmp/curl.bash'
let @l = ':Lex:e.'
let g:C_SourceCodeExtensions  = 'h cc cp cxx cpp CPP c++ C i ii'
let g:airline_theme='one'
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_transparency=0.8
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_banner = 0

syntax on

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

hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE
hi ColorColumn ctermbg=magenta

function! GetTags()
	let b:dir = "/tmp/" . substitute(getcwd(), '^.*/', '', '') . ".tags"
	call system('ctags -R -f ' . b:dir . ' "`realpath .`"')
	exe 'set tags+=' . b:dir
endfunction
