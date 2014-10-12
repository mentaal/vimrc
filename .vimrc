"Greg's vimrc

"use pathogen as our package manager
execute pathogen#infect()

"set tabs to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"use the dark solarized colorscheme
set background=dark
colorscheme solarized


"case insensitive searching 
:set smartcase
:set ignorecase

"set the cursor at the next search
:set incsearch

"only visual bell!
set vb


"use syntax highlighting (why isn't this on by default?!!)
:filetype on
filetype plugin indent on
:syntax on

"remove toolbar and scrollbars
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"shortcut to vimrc
:nmap ,v :e ~/.vimrc<CR>

"Easy tab management
:nmap < :tabp<CR>
:nmap > :tabn<CR>

"automatically change the directory to that of the curent file
"set autochdir
"a suggested alternative
autocmd BufEnter * silent! lcd %:p:h

"copy the current file path to the clipboard
:nmap ,P :let @" = expand("%:p")<CR>
:nmap ,p :let @" = expand("%:t")<CR>

"easily navigate windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"easily jump around tabs
:nmap <A-1> :tabm 0<CR>
:nmap <A-2> :tabm 1<CR>
:nmap <A-3> :tabm 2<CR>
:nmap <A-4> :tabm 3<CR>
:nmap <A-5> :tabm 4<CR>

"switch buffers without having to save them 
set hidden

"later: install YCM (you complete me)


"Currently installed plugins
"ctrl p
"solarized 
