call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'itchyny/lightline.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'lifepillar/vim-gruvbox8'
Plug 'tomasr/molokai'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = { enable = true, disable = {} },
  indent = { enable = true },
  ensure_installed = {
    "go", "python", "javascript",
    "json", "yaml", "c", "html",
    "java", "css", "scss", "vim"
  },
}
EOF

" colorscheme industry
" colorscheme murphy
" colorscheme pablo
" colorscheme molokai
" execute 'set background=' . (strftime('%H') < 16 ? 'dark' : 'light')
colorscheme gruvbox8_hard
set foldmethod=indent
set foldexpr=nvim_treesitter#foldexpr()
set background=dark
set clipboard+=unnamedplus
set tags+=/tmp/tags
set relativenumber
set number
set autoread
set autowrite
set cursorline
set fileformat=unix
set colorcolumn=1000
set guifont=Unifont:h12

let @f = ':e /tk€kbmp/indexggVGd:w:r!find€kb€kb€kbfi€kb€kb€kbfind . -type f :w:w:w:w'
let @w = ':call FloatWindow()'
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

function! OpenFloatTerm()
  let height = float2nr((&lines - 2) / 1.5)
  let row = float2nr((&lines - height) / 2)
  let width = float2nr(&columns / 1.5)
  let col = float2nr((&columns - width) / 2)
  " Border Window
  let border_opts = {
    \ 'relative': 'editor',
    \ 'row': row - 1,
    \ 'col': col - 2,
    \ 'width': width + 4,
    \ 'height': height + 2,
    \ 'style': 'minimal'
    \ }
  let border_buf = nvim_create_buf(v:false, v:true)
  let s:border_win = nvim_open_win(border_buf, v:true, border_opts)
  " Main Window
  let opts = {
    \ 'relative': 'editor',
    \ 'row': row,
    \ 'col': col,
    \ 'width': width,
    \ 'height': height,
    \ 'style': 'minimal'
    \ }
  let buf = nvim_create_buf(v:false, v:true)
  let win = nvim_open_win(buf, v:true, opts)
  new
  startinsert
  " Hook up TermClose event to close both terminal and border windows
  autocmd TermClose * ++once :q | call nvim_win_close(s:border_win, v:true)
endfunction

