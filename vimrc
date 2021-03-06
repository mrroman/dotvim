" General
set hidden
set nobackup
set noswapfile

set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set copyindent    " copy the previous indentation on autoindenting
set cindent	" Use 'C' style program indenting
set tabstop=4
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set wildmenu

" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

syntax on

" Efficiency
let mapleader=","
nnoremap ; :

" Formatting
" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap
map <Leader>f gg=G

filetype indent on

nnoremap <localleader>t :EnTypeCheck<CR>

" vim-airline
let g:airline_powerline_fonts=1

" fzf
map <leader><leader> :Files<CR>
map <leader><Enter> :Buffers<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" yaml
au BufNewFile,BufRead *.yml set sts=2 sw=2 ts=2
