""" Vim Plug Plugins:
call plug#begin('~/.config/nvim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'antoinemadec/coc-fzf'
	Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
	Plug 'junegunn/fzf.vim' " needed for previews
	Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'tpope/vim-commentary'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua', {'after': 'nvim-web-devicons'}
	Plug 'mikelue/vim-maven-plugin' 
	Plug 'chiel92/vim-autoformat'
	Plug 'machakann/vim-highlightedyank'
	Plug 'airblade/vim-rooter'
    " Themes
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'morhetz/gruvbox'
	Plug 'NLKNguyen/papercolor-theme'
    Plug 'vim-airline/vim-airline'
call plug#end()

""" Transparent Background:
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd BufRead * hi Normal guibg=NONE ctermbg=NONE
autocmd BufWrite *.sh Autoformat

""" Powerline Setup:
" install fonts-Powerline for setup Powerline properly.
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onehalfdark'
" let g:airline_powerline_fonts = 1
" let g:airline_symbols_ascii = 1
" if !exists('g:airline_symbols')
" let g:airline_symbols = {}
" endif

""" Color Scheme:
colorscheme gruvbox
" colorscheme onehalfdark
" colorscheme PaperColor
set background=dark					"Background to dark.

""" Vim Specific Settings:
syntax on							"File syntax on(netrw).
filetype plugin on					"Based on File type the plugin will be on. Its Default Plugin Comes with VIM.(For netrw).
let mapleader=" "
set number relativenumber			"Line Number and Relative number.
set scrolloff=10					"Limit cursor to go dow uninl only 30 linse. Keep cursor in middle.
set modifiable						"Enable modify the dir.
set nowrap							"No Wrap, setting wrap to false.
set laststatus=2					"set the status line
set noswapfile
set showtabline=2
set softtabstop=4
set tabstop=4 
set noexpandtab "no replace 4 spaces to tab
set shiftwidth=4
set softtabstop=4
set cmdheight=10

""" My Shortcuts:
nnoremap <Leader>w		:w<CR>
nnoremap <Leader>q		:bd<CR>
nnoremap <Leader>n		:bn<CR>
nnoremap <Leader>b		:bN<CR>
nnoremap <Leader>vs		:w !sudo tee %<CR>
nnoremap <Leader>m		:set wrap<CR>
nnoremap <Leader>M		:set nowrap<CR>
nnoremap <C-_>			:Commentary<CR>
nnoremap <f6>			:source ~/.config/nvim/init.vim<CR>
nnoremap <Leader>h		:set hlsearch!<CR>
nnoremap <Leader>rj		:!runjava %:p<CR>
nnoremap <Leader>f		:Files<CR>
nnoremap <C-p>			:Rg<CR>
nnoremap <C-j>			:wincmd j<CR>
nnoremap <C-k>			:wincmd k<CR>
nnoremap <C-h>			:wincmd h<CR>
nnoremap <C-l>			:wincmd l<CR>
nnoremap <Leader>t		:!ant clean compile
nnoremap <Up>			:wincmd -<CR>
nnoremap <Down>			:wincmd +<CR>
nnoremap <Right>		:wincmd ><CR>
nnoremap <Left>			:wincmd <<CR>

""" Fast Esc:
augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
augroup END

" COC Shortcuts:
nnoremap go 			:CocOutline<CR> 	
nnoremap <C-q>			<Plug>(coc-fix-current)	

" COC FZF Setting:
let g:coc_fzf_preview = ''
let g:coc_fzf_opts = []

" COC Settings:
command! -nargs=0 Prettier :CocCommand prettier.formatFile
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/treesetter.lua
source $HOME/.config/nvim/nvtree/init.lua
source $HOME/.config/nvim/nvtree/nvim.vim

" Vim-rooter Setting:
let g:rooter_patterns = ['=trunk']
let g:rooter_patterns = ['=src']
