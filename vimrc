set laststatus=2 " to fix airline not showing

let g:airline_powerline_fonts = 1 " powerline font stuff

syntax enable " syntax highlighting

" Theme
set t_Co=16
set background=dark
colorscheme slate 

" Indents
set smartcase   " search intelligently
set smartindent

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

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'fatih/vim-go'
call plug#end()

