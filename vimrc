set laststatus=2 " to fix airline not showing

let g:airline_powerline_fonts = 1 " powerline font stuff

syntax enable " syntax highlighting

" Theme
set t_Co=256
set background=dark
colorscheme twilight256 
"hi Normal ctermbg=none

" Leader Commands
let mapleader=","
map <Leader>r <Plug>RunFocusedSpec
map <Leader>R <Plug>RunFocusedSpecFile
map <Leader>e <Plug>RunMostRecentSpec

" Remove the delay when escaping from insert-mode
set timeoutlen=1000 ttimeoutlen=0

" Indents
set smartcase   " search intelligently
set smartindent
set autoindent
set breakindent

" Soft Tabs, 2 Spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch  " highlight searches, and search incrementaly
set incsearch
map <F2> <esc>:noh<cr><esc>
set wrapscan

" Tabbing
set tabstop=4 " set tab to 4 spaces
set shiftwidth=4
set expandtab
highlight SpecialKey ctermfg=1  " highlight actual tabs
set list
set listchars=tab:>>

autocmd FileType make setlocal noexpandtab

" line numbers + ruler
set number
set ruler

set noeb " turn off notifications
set visualbell
set t_vb=

set backspace=indent,eol,start " backspace continues on previous line

" get rid of swap files. we have git.
set nobackup 
set nowb
set noswapfile

set so=10 " leave some text at the top / bottom of the screen

set whichwrap+=<,>,h,l,[,] " wrap arrow keys around lines

" Key-bindings: Tabs
imap <F1> <nop>
nmap <F1> <nop>
set pastetoggle=<F5>
map <F7> <esc>:tabp<cr>  " map F7 F8 and F9 to previous, next, and new tab
map <F8> <esc>:tabn<cr>
map <F9> <esc>:tabe<cr>

"remap jj to escape in insert mode
inoremap jj <Esc>

" File Types
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ai filetype=javascript

augroup mkd
autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
augroup END

set clipboard=unnamed

" nerdtree
let NERDTreeHijackNetrw = 0
nmap gt :NERDTreeToggle<CR>
nmap gf :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" CtrlP Key Bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" use silver searcher with ack.vim (faster)
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" UltiSnips 
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger = '<c-e>'  
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " :UltiSnipsEdit to split your window.

" Vim-Go Customizations
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'stephenminded/vim-spec-runner'
call plug#end()

