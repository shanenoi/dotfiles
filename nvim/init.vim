call plug#begin()
Plug 'wakatime/vim-wakatime'
Plug 'itchyny/lightline.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'tomasr/molokai'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'
call plug#end()

" execute 'set background=' . (strftime('%H') < 16 ? 'dark' : 'light')
colorscheme delek
set foldmethod=indent
set foldexpr=nvim_treesitter#foldexpr()
set background=dark
set clipboard+=unnamedplus
set tags+=/var/tmp/tags
set relativenumber
set number
set autoread
set autowrite
set cursorline
" set fileformat=unix
set colorcolumn=1000
" set guifont=Unifont:h15

function! TmpIndex()
	return '/var/tmp/.' . substitute(getcwd(), '^.*/', '', '') . '_index'
endfunction

let @f = ':silent !find . -not -path "./\.git/*" -not -path "./vendor/*" -not -path "./node_modules/*" -type f > ' . TmpIndex() . ':e ' . TmpIndex() . ''
let @l = ':Lex:e.'
let @r = 'yiw:ltag + | lwindow'
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
autocmd BufNewFile,BufRead *.rb 
			\ source ~/.config/nvim/ftplugin/ruby.vim

hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE
hi ColorColumn ctermbg=magenta

function! GetTags()
	let b:dir = "/var/tmp/" . substitute(getcwd(), '^.*/', '', '') . ".tags"
	call system('ctags -R -f ' . b:dir . ' "`realpath .`"')
	exe 'set tags+=' . b:dir
endfunction

lua <<EOF
	require'nvim-treesitter.configs'.setup {
	  highlight = { enable = true, disable = {} },
	  indent = { enable = true },
	  ensure_installed = {
	    "go", "python", "javascript",
	    "json", "yaml", "c", "html",
	    "java", "css", "scss", "vim",
	    "rust"
	  },
	}
	local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

	parser_configs.norg = {
	    install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main"
	    },
	}
EOF

