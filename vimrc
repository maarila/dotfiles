" Please note: Vundle needs to be separately installed first.
" See: http://github.com/VundleVim/Vundle.Vim

" definitions required by Vundle start here
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox' " gruvbox theme
Plugin 'scrooloose/nerdtree' " fancy tree file system explorer
Plugin 'vim-airline/vim-airline' " fancy status line at the bottom
Plugin 'Yggdroot/indentLine' " show vertical indentation lines
Plugin 'tpope/vim-surround' " add, change, delete surroundings, cs'<q> -> ' to q
Plugin 'justinmk/vim-sneak' " search with s{char}{char}
Plugin 'scrooloose/nerdcommenter' " comment with <leader>cc/<leader>cu
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'pangloss/vim-javascript' " Javascript syntax package
Plugin 'mxw/vim-jsx' " React syntax highlighting
Plugin 'othree/html5.vim' " html5 syntax and indent
Plugin 'mattn/emmet-vim' " expand html and css
Plugin 'scrooloose/syntastic' " TO BE REPLACED BY ALE

" potential plugins
" Plugin 'airblade/vim-gitgutter' " show git diff in the gutter
" Plugin 'HerringtonDarkholme/yats.vim' " Typescript syntax
" Plugin 'Raimondi/delimitMate' " automatic parentheses
" Plugin 'sheerun/vim-polyglot' " works automatically
" Plugin 'ntpeters/vim-better-whitespace " improved whitespace detection

" alternative plugins
" Plugin 'othree/yajs.vim' " Javascript syntax file
" Plugin 'ryanoasis/vim-devicons' " requires nerdtree
" Plugin 'itchyny/lightline.vim' " alternative to airline
" Plugin 'nathanaelkane/vim-indent-guides' " activate with <leader>ig

call vundle#end()            " required
filetype plugin indent on    " required
" definitions required by Vundle end here!

" set leader to comma instead of \
let mapleader=","

" set runtime path to include fzf (installed w/Brew), run with :FZF
set rtp+=/usr/local/opt/fzf

" set default configuration for Syntastic
set statusline+=%#warningmsg#
set statusline+={SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline settings
" Please note: Airline requires Powerline fonts to show correctly.
" See: https://github.com/powerline/fonts
" If undesired, please use Lighline instead (see alternative plugins above
" and deprecated settings at the bottom)
let g:airline_powerline_fonts = 1 " enable Powerline fonts
let g:airline#extensions#tabline#enabled = 1 " display all buffers
let g:airline#extensions#tabline#buffer_nr_show = 1 " display buffer number
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " format filepath

" NERDTree settings and mappings
let NERDTreeQuitOnOpen = 1 " close NERDTree when opening a file
let NERDTreeAutoDeleteBuffer = 1 " delete also the buffer when deleting a file
nnoremap <leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <leader>v :NERDTreeFind<CR>

" make NERDCommenter add a space after comment sign
let g:NERDSpaceDelims = 1

" map ctrl+j/k/l/h to move around windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map <leader><space> to clear search results
nnoremap <leader><space> :noh<CR>

" mappings for buffer switching: previous, next, delete
nnoremap <leader>p :bp<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>d :bd<CR>

" map <ESC> to jk
inoremap jk <ESC>

" map leader-b to run a ruby file
au BufRead, *.rb nmap <leader>b :!ruby %<CR>

" enable colors in code, NB. preferably not 'syntax on'
if !exists("g:syntax_on")
    syntax enable
endif

" current color theme
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" show trailing whitespace in red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set hidden " hide buffers instead of closing them
set noshowmode " hide -- INSERT -- from below Airline
set ignorecase " make search case-insensitive
set smartcase " ignore case if search is lowercase, otherwise case-sensitive
set hlsearch " highlight search terms
set incsearch " show search matches while typing
set number " show line numbers
set relativenumber " set line number relative to position
set backspace=indent,eol,start " allow backspacing over everything
set expandtab " make tab insert spaces instead of tab characters
set tabstop=2 " show tab as X spaces
set shiftwidth=2 " number of spaces for autoindent
set shiftround " use shiftwidth when indenting with < and >
set expandtab " make tab insert spaces instead of tab characters
set showmatch " show matching parentheses
" set textwidth=79 " set text width (duh!)
set encoding=utf-8 " set proper text encoding
set cursorline " highlight active line
set scrolloff=7 " keep cursor nearer to the middle of the screen
set colorcolumn=85 " show highlighted column @ 85 width
" set cuc cul" " highlight active column

" *****************************************************************
" Here be deprecated settings saved for just-in-case:

" show Lightline at startup
" set laststatus=2

" set thin indent guides for vim-indent-guides
" let g:indent_guides_guide_size = 1

" set CTRL+n to open NERDTree
" map <C-n> :NERDTreeToggle<CR>
" let NERDTreeShowHidden=1 " show hidden files in NERDTree

" remove netrw banner and choose netrw default view
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3

