"+----------+
"| Plugins: |
"+----------+
call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'
	Plug 'morhetz/gruvbox'
    Plug 'kien/ctrlp.vim'
 	Plug 'vim-airline/vim-airline'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdtree'
	Plug 'chiel92/vim-autoformat'
	Plug 'tpope/vim-surround'
    Plug 'tanmaykumarbala/toogleBoolean'
    Plug 'tanmaykumarbala/toggleNU'
	Plug 'tanmaykumarbala/toggleIC'
	Plug 'tanmaykumarbala/toggleWrap'
	Plug 'tanmaykumarbala/toggleHLS'
    " Themes
    Plug 'arcticicestudio/nord-vim'
    Plug 'morhetz/gruvbox'
call plug#end()

"+-------------------------+
"| Transparent Background: |
"+-------------------------+
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
au BufRead * hi Normal guibg=NONE ctermbg=NONE

"+------------------+
"| Powerline Setup: |
"+------------------+
" install fonts-Powerline for setup Powerline properly.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"+---------------+
"| Color Scheme: |
"+---------------+
colorscheme gruvbox

"+-----------+
"| my config |
"+-----------+
let mapleader=" "					"Maping Leader.
syntax on							"File syntax on(netrw).
filetype plugin on					"Based on File type the plugin will be on. Its Default Plugin Comes with VIM.(For netrw).
set number relativenumber			"Line Number and Relative number.
set nocompatible					"Telling Vim to not act like VI editor.
set noswapfile
set nowrap							"No Wrap, setting wrap to false.
set modifiable						"Enable modify the diset expandtab
set incsearch
set wildmenu						"Setting menu on (Fuzzy finder, file name, etc in botton bar).
set nocompatible
set autoread
set splitright

set mouse=r
set scrolloff=10
set tabstop=4						"Tabs limit to 4.
set softtabstop=4
set bg=dark							"Background to dark.
set backspace=indent,eol,start		"For Backspace to work.
set incsearch						"Incremental Search.
set scrolloff=10					"Limit cursor to go dow uninl only 30 linse. Keep cursor in middle.
set signcolumn=no					"Sign column to check the errors notification.
set path+=**						"Setting path for file incremetal search in project for Files (Fuzzy search) Note:- :b filename/filenameSubset, b-stands for buffer, to move around the opened files.
set laststatus=2 					"set the status line
set wildignore+=**/venv/**

nnoremap <C-h>						:wincmd h<CR>
nnoremap <C-k>						:wincmd k<CR>
nnoremap <C-j>						:wincmd j<CR>
nnoremap <C-l>						:wincmd l<CR>
nnoremap <Leader>q 	                :bd<CR>
nnoremap <TAB>                      :bnext<CR>
nnoremap <S-TAB>                    :bprev<CR>
nnoremap <C-_> 		                :Commentary<CR>
nnoremap <Leader>vim                :e ~/.vimrc<CR>
nnoremap <Leader>so                 :source ~/.vimrc<CR>
nnoremap <Leader>vs                 :w !sudo tee %<CR>
nnoremap <Leader>ctag               :!ctags -R .<CR>
nnoremap <leader>e					:NERDTreeToggle<CR>
nnoremap <leader>f					:NERDTreeFocus<CR>
nnoremap <leader>r                  :!python ./main.py<CR>
nnoremap <Leader>venv               :!python3 -m venv venv<CR>

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"+------------------+
"|  Boxes shortcut  |
"+------------------+
nnoremap <Leader>,bs 	            :.!boxes -d stone<CR>
nnoremap <Leader>,bn 	            :.!boxes -d nuke<CR>7jFjxxxi___<ESC>3jo<ESC>

"+----------------------------+
"| Custome functions for gvim |
"+----------------------------+
if has("gui_running")
	set guioptions-=L
endif


"+-----------------------+
"| Disabling Arrow Keys: |
"+-----------------------+
nnoremap <Left> 		            :echo "No left for you!"<CR>
vnoremap <Left> 		            :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>	            :echo "No left for you!"<CR>
nnoremap <Right> 		            :echo "No Right for you!"<CR>
vnoremap <Right> 		            :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>	            :echo "No left Right you!"<CR>
nnoremap <Up> 			            :echo "No Up for you!"<CR>
vnoremap <Up> 			            :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>		            :echo "No Up for you!"<CR>
nnoremap <Down> 		            :echo "No Down for you!"<CR>
vnoremap <Down> 		            :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>	            :echo "No Down for you!"<CR>
