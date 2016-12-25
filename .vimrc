set nocompatible
filetype off
set number
set colorcolumn=80
syntax on
let mapleader=","
:set list lcs=tab:\|\

if $TMUX == ''
  set clipboard+=unnamed
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
nmap <leader>f :Ack

Plugin 'benmills/vimux'
Plugin 'skalnik/vim-vroom'
let g:vroom_use_vimua=1
let g:vroom_use_spring=1

map <leader>l :VroomRunNearestTest<CR>

Plugin 'kien/ctrlp.vim'
" nmap <leader>t :CtrlP<CR>

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
let g:ctrlp_max_files=32768

Plugin 'scrooloose/nerdtree'
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>N :NERDTreeFind<CR>

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ngmy/vim-rubocop'

map <leader>r :RuboCop<CR>

Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" http://slinky.imukuppi.org/zenburnpage/
let g:zenburn_high_Contrast = 1
colors zenburn

set clipboard=unnamed

"" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set smarttab                    " fix <BS> key
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Dealing with unsaved buffers
set hidden                      " Allow unsaved buffers
set confirm                     " Confirm all unsaved buffers on exit
autocmd BufLeave,FocusLost * silent! wall " save when changing buffers

Plugin 'janko-m/vim-test'

let test#ruby#rails#executable = 'rails t'
let test#ruby#rails#options = '-d'

nmap <leader>t :TestNearest<CR>
nmap <leader>T :TestFile<CR>
nmap <leader>a :TestSuite<CR>
nmap <leader>l :TestLast<CR>
nmap <leader>g :TestVisit<CR>

nmap <tab><tab> :tabnext<CR>
nmap tt :tabnew<CR>
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>
nmap <Tab>p :tabprevious<CR>
nmap <Tab>h :tabprevious<CR>
nmap <Tab>l :tabnext<CR>
nmap <Tab><Space> :tabnext<CR>
nmap <C-space> :tabnext<CR>

map vv :vsplit<CR>
map ss :split<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" things foo go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
