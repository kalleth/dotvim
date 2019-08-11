set termguicolors
set nocompatible
" source $VIMRUNTIME\mswin.vim

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby'
Plug 'nightsense/vimspectr'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'rakr/vim-one'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

colorscheme one
set mouse=a
set background=dark
set wildmode=list:longest,full "pretty finding
set noswapfile
set number
set smartindent
set tabstop=4
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set backspace=indent,eol,start
set completeopt-=preview
set cursorline
set fileformats=unix
" GuiFont Consolas:h12
map <F8> :set invhlsearch hlsearch?<CR>
" minibufexpl buffer fuzzy find
nmap ; :CtrlPBuffer<CR>
" unobtrusive whitespace highlighting
map <C-n> :NERDTreeToggle<CR>
" http://blog.kamil.dworakowski.name/2009/09/unobtrusive-highlighting-of-trailing.html
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
au FileType go setl noexpandtab shiftwidth=4 softtabstop=4

" goyo for markdown/distraction-free writing
map <F12> :Goyo<CR>
let g:goyo_width=120

syntax on
filetype on
filetype plugin on
filetype indent on

"vim-pencil
"augroup pencil
"  autocmd!
"  autocmd FileType markdown,mkd call pencil#init()
"  autocmd FileType text         call pencil#init()
"augroup END
