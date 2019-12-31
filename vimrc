" PLEASE NOTE: Vundle needs to be separately installed first:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" definitions required by Vundle start here
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox' " gruvbox theme
Plugin 'scrooloose/nerdtree' " tree file system explorer
Plugin 'itchyny/lightline.vim' " show status line at the bottom
Plugin 'Yggdroot/indentLine' " show vertical indentation lines
Plugin 'tpope/vim-surround' " add, change, delete surroundings, cs'<q> -> ' to q
Plugin 'justinmk/vim-sneak' " search with s{char}{char}
Plugin 'scrooloose/nerdcommenter' " comment with <leader>cc/<leader>cu
Plugin 'pangloss/vim-javascript' " Javascript syntax package
Plugin 'mxw/vim-jsx' " React syntax highlighting
Plugin 'elzr/vim-json' " JSON syntax highlighting and warnings
Plugin 'othree/html5.vim' " html5 syntax and indent
Plugin 'mattn/emmet-vim' " expand html and css with <C-y>,
Plugin 'jiangmiao/auto-pairs' " insert parenthesis in pairs
Plugin 'airblade/vim-gitgutter' " show git diff in the gutter
Plugin 'junegunn/fzf.vim' " enable fzf fuzzy search
Plugin 'w0rp/Ale' " provide asynchronous linting
Plugin 'janko-m/vim-test' " run tests from inside Vim
Plugin 'ap/vim-css-color' " add color preview to CSS colors

" potential plugins
" Plugin 'tpope/vim-rails' " Ruby on Rails support
" Plugin 'tpope/vim-endwise' " add 'end' in Ruby after if/def/do etc.
" Plugin 'HerringtonDarkholme/yats.vim' " Typescript syntax
" Plugin 'sheerun/vim-polyglot' " works automatically
" Plugin 'tpope/vim-fugitive' " Git wrapper
" Plugin 'SirVer/ultisnips' " snippets for vim
" Plugin 'honza/vim-snippets' " ready-made snippets

" alternative plugins
" Plugin 'othree/yajs.vim' " Javascript syntax file
" Plugin 'ryanoasis/vim-devicons' " requires nerdtree
" Plugin 'vim-airline/vim-airline' " alternative to lightline
" Plugin 'nathanaelkane/vim-indent-guides' " activate with <leader>ig

call vundle#end()            " required
filetype plugin indent on    " required
" definitions required by Vundle end here!

" set leader to comma instead of \
let mapleader=","

" installing fzf:
" git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
" ~/.fzf/install
" set runtime path to include fzf (installed w/Brew)
" set rtp+=/usr/local/opt/fzf
" set runtime path to include fzf (installed w/git)
set rtp+=~/.fzf

" show ALE linters
let g:ale_echo_msg_format = '%linter% says %s'
" tweak ALE error signs
let g:ale_sign_error = '●'
let g_ale_sign_warning = '.'
let g_ale_lint_on_enter = 0

" NERDTree settings and mappings
let NERDTreeQuitOnOpen = 1 " close NERDTree when opening a file
let NERDTreeAutoDeleteBuffer = 1 " delete also the buffer when deleting a file
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>v :NERDTreeFind<CR>

" make NERDCommenter add a space after comment sign
let g:NERDSpaceDelims = 1

" show indent lines from the first level
let g:indentLine_showFirstIndentLevel = 1

" disable indentLine for markdown, json in order to set conceal level to 0
" i.e. show markdown formatting explicitly within a markdown file
let g:indentLine_fileTypeExclude = ['markdown', 'json']

" show Lightline at startup
set laststatus=2

" show gutter always for vim-gitgutter
set signcolumn=yes

" Sneak setting: enable clever sneak i.e. repeat sneak with s or S
let g:sneak#s_next = 1

" improve Emmet for JSX
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \  'extends': 'jsx',
    \  'quote_char': "'",
    \  },
  \}

" map keys for vim-test: nearest to cursor, current file, all, last run and
" visit the test file that was last run
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-g> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-v> :TestVisit<CR>

" map ctrl+j/k/l/h to move around split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" map K to split a line into two (i.e. the opposite of J)
nnoremap K i<CR><Esc>

" map <leader><a> to re-indent all lines and return to original line
nnoremap <leader>a gg=G''

" map <leader><space> to clear search results
nnoremap <leader><space> :noh<CR>

" mappings for buffer switching: previous, next, delete
nnoremap <leader>p :bp<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>d :bd<CR>

" mappings for fzf fuzzy search
nmap ä :Buffers<CR>
nmap <leader>t :Files<CR>
nmap <leader>r :Tags<CR>

" map up and down keys to move cursor one line at a time even when a single
" line extends to multiple lines
nmap j gj
nmap k gk

" PLEASE NOTE: the following are for Nordic keyboard layouts.
" map search forward and backward similarly as in US/UK keyboards, then switch
" original functionality to the replacements
nnoremap - /
nnoremap _ ?

nnoremap / -
nnoremap ? _

" map colon similarly (or better) as in US/UK keyboards
nnoremap ö :

" make switching case easier
nnoremap å ~

" map euro sign to dollar sign for easier moving to the EOL
nnoremap € $

" map c€ to c$
nnoremap c€ c$

" command mode: map backslash as in US/UK keyboards to make substituting faster
cnoremap - /
cnoremap / -

" map <ESC> to jk
inoremap jk <ESC>

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
match ExtraWhitespace /\s\+\%#\@<!$/

set backspace=indent,eol,start " allow backspacing over everything
set colorcolumn=85 " show highlighted column @ 85 width
set cursorline " highlight active line
set encoding=utf-8 " set proper text encoding
set expandtab " make tab insert spaces instead of tab characters
set hidden " hide buffers instead of closing them
set hlsearch " highlight search terms
set ignorecase " make search case-insensitive
set incsearch " show search matches while typing
set noshowmode " hide -- INSERT -- from below Airline
set number " show line numbers
set relativenumber " set line number relative to position
set scrolloff=7 " keep cursor nearer to the middle of the screen
set shiftround " use shiftwidth when indenting with < and >
set shiftwidth=2 " number of spaces for autoindent
set smartcase " ignore case if search is lowercase, otherwise case-sensitive
set tabstop=2 " show tab as X spaces
