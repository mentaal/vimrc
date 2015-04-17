" Vim mode, non vi compatible
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("gui_win32")
    set rtp+=~/vimfiles/bundle/Vundle.vim
    let path='~/vimfiles/bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
endif
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"get colorschemes
Plugin 'flazz/vim-colorschemes'

"ctrlp
Plugin 'kien/ctrlp.vim'

"supertab
Plugin 'ervandew/supertab'

"Python Mode
Plugin 'klen/python-mode'
let g:pymode_lint_write = 0       "turn off running pylint on file save
"nnoremap <leader>p :PyLint<cr>    "pressing ,p will run plyint on current buffer
"turn off obnoxious red column
let g:pymode_options_colorcolumn = 0
"turn off annoying errors in margin
let g:pymode_lint_signs = 0

"Hexmode
Plugin 'fidian/hexmode'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"use pathothen
"execute pathogen#infect()
syntax on
filetype plugin indent on
"colorscheme Benokai
"colorscheme leo
"set background=light
"colorscheme solarized
"let g:solarized_italic=0


"set statusline
" Begin .vimrc
"nnoremap <space> za
"nmap ,p :nnoremap <space> za<cr>:set foldmethod=syntax<cr>
set ignorecase
set smartcase

se cursorline      " highlight current line
"hi cursorline guibg=#333333   " highlight bg color of current line
"se cursorcolumn

"if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and
                                " selected characters/lines in visual mode
"endif
 
set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')
set scrolloff=3         " minimum lines to keep above and below cursor

set autoindent
set incsearch "start search immediately
set hlsearch
set bs=2
"set columns=80
set background=dark
set tabstop=4
"set wrapmargin=8
"also look at textwidth
set nobk
set ruler

set list listchars=tab:\|\ ,trail:.
"set nolist 

" I like highlighting strings inside C comments
let c_comment_strings=1
set showmode
set wildmenu
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

" Show line numbers
set number

set shiftwidth=4
"set textwidth=76
" Highlight matched paranthesis
"let loaded_matchparen = 1
"hi MatchParen ctermbg=blue guibg=lightblue
  "colorscheme leo


"allow to switch between buffers with the [ (prev) ] (next) keys"
nmap > :tabn<CR>
nmap < :tabp<CR>

set noswapfile


""Turn off the left and right scrollbars, as i don't use them
set guioptions-=L
set guioptions-=r
""Turn off the menu toolbar
set guioptions-=T
set guioptions-=m

""keep the working directory with the open buffer
"autocmd BufEnter * lcd %:p:h

""Automatically reload .vimrc when saved
"au BufWritePost ~/.vimrc :source ~/.vimrc
""make it easy to reaload vimrc
nmap ,l :source ~/_vimrc<cr>

""flash opposite bracket on insertion
set showmatch

"""make all tabs appear as spaces
"""to make all existing tabs in a file be converted to spaces :%retab!
set expandtab

"""insert time and date into file
"""nmap ,t :r! date <CR>

"""make the repeat work a bit better
nmap . .`[


""""Ensure folds are saved and restored properly
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

""""Allow for automatic backupfile generation
"let g:writebackup_BackupDir = './bckup' 
"nmap W :WriteBackup <CR>
set nobackup
set nowritebackup

"""save marks
set viminfo='100,f1

"" file for most recently used list
""let MRU_File=$HOME.'/.vim/mru_file'
""let MRU_Max_Entries=20


"nmap ,r :let b:match_words =  '\<task\>:\<endtask\>,' .  '\<interface\>:\<endinterface\>,' . '\<function\>:\<endfunction\>,' .  '\<begin\>:\<end\>,' . '\<class\>:\<endclass\>,' .  '\<package\>:\<endpackage\>,' . '\<program\>:\<endprogram\>,' .  '\<do\>:\<while\>,' . '\<module\>:\<endmodule\>,' . '\<case\>:\<endcase\>,' . '\<ifdef\>:\<endif\>,' . '\<generate\>:\<endgenerate\>'

nmap ,v :tabe ~/_vimrc <cr>
set wrap


"below is for keeping undo history in hidden buffer
set hidden

"faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"nmap <silent> cp "_cw<C-R>"<Esc>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
"map <C-L> <C-W>l<C-W>_
"map <C-H> <C-W>h<C-W>_

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
"cmap cd. lcd %:p:h

" Supertab {
"let g:SuperTabDefaultCompletionType = "context"

"try using jedi-vim instead of below
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-x><c-n>"

"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

"let g:SuperTabContextDefaultCompletionType = "<c-x><c-n>"

"let g:SuperTabContextDefaultCompletionType = "<c-x><c-i>"
"let g:SuperTabRetainCompletionDuration = 'completion'
let g:SuperTabRetainCompletionDuration = 'session'
" }
set ofu=syntaxcomplete#Complete
"" OmniComplete {
"if has("autocmd") && exists("+omnifunc")
"autocmd Filetype *
"\if &omnifunc == "" |
"\setlocal omnifunc=syntaxcomplete#Complete |
"\endif
"endif

" Stupid shift key fixes
"cmap W w
cmap WQ wq
cmap wQ wq
"cmap Q q
cmap Tabe tabe

:set guitablabel=%t

map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A-0> 10g

"set guitablabel=%!GuiTabLabel()


"nmap <leader>co :!soscmd co %<cr>
"nmap <leader>ci :!soscmd ci %<cr>
"nmap <leader>te :!gnome-terminal &<cr>
"nmap <leader>w :!chmod +w %<cr>
"nmap <leader>r :!chmod -w %<cr>
nmap <leader>p :let @+ = expand("%:p:h")<cr>
nmap <leader>o :lcd %:p:h<cr>

"easy search and replace of selected text
vnoremap <C-r> <Esc>:%s/<C-r>*//gc<left><left><left>


"easy search and replace of selected text
vnoremap <C-r> <Esc>:%s/<C-r>*//gc<left><left><left>


nnoremap <silent> <Leader>df :call DiffToggle()<CR>

"below used for case insensitive buffer expansions
let g:BufSel_Case_Sensitive = 0
function! DiffToggle()
    if &diff
        diffoff
    else
        diffthis
    endif
endfunction

""make tags work properly
"set tags=tags;/
set tags=./tags;/
nmap ,t :silent !ctags -R --languages=c,c++,python<CR>


"keep cursor in the middle of the screen for searches
":nnoremap n nzz
":nnoremap N Nzz
":nnoremap * *zz
":nnoremap # #zz
":nnoremap g* g*zz
":nnoremap g# g#zz

set makeprg=irun\ -f\ run.f\ $*
set errorformat+=%.%#\ *E\\,%.%#(%f\\,%l\|%c):\ %m
set errorformat+=%.%#UVM_FATAL\ %f(%l)\ %m
" Status Line {  
        set laststatus=2                             " always show statusbar  
        set statusline=  
        set statusline+=%-10.3n\                     " buffer number  
        set statusline+=%f\                          " filename   
        set statusline+=%h%m%r%w                     " status flags  
        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
        set statusline+=%=                           " right align remainder  
        set statusline+=0x%-8B                       " character value  
        set statusline+=%-14(%l,%c%V%)               " line, character  
        set statusline+=%<%P                         " file position  
"}  


"get average, min max, count in vim
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

if has("gui_win32")
    let $TMP="c:/temp"
endif

"start a command prompt
if has("gui_win32")
    nmap <leader>te :silent !start<CR>
else
    nmap <leader>te :silent !gnome-terminal &<cr>
endif


""handle hex files
""nnoremap <C-H> :Hexmode<CR>
""inoremap <C-H> <Esc>:Hexmode<CR>
""vnoremap <C-H> :<C-U>Hexmode<CR>
"
"" ex command for toggling hex mode - define mapping if desired
"command -bar Hexmode call ToggleHex()
"
"" helper function to toggle hex mode
"function ToggleHex()
"  " hex mode should be considered a read-only operation
"  " save values for modified and read-only for restoration later,
"  " and clear the read-only flag for now
"  let l:modified=&mod
"  let l:oldreadonly=&readonly
"  let &readonly=0
"  let l:oldmodifiable=&modifiable
"  let &modifiable=1
"  if !exists("b:editHex") || !b:editHex
"    " save old options
"    let b:oldft=&ft
"    let b:oldbin=&bin
"    " set new options
"    setlocal binary " make sure it overrides any textwidth, etc.
"    silent :e " this will reload the file without trickeries 
"              "(DOS line endings will be shown entirely )
"    let &ft="xxd"
"    " set status
"    let b:editHex=1
"    " switch to hex editor
"    %!xxd
"  else
"    " restore old options
"    let &ft=b:oldft
"    if !b:oldbin
"      setlocal nobinary
"    endif
"    " set status
"    let b:editHex=0
"    " return to normal editing
"    %!xxd -r
"  endif
"  " restore values for modified and read only state
"  let &mod=l:modified
"  let &readonly=l:oldreadonly
"  let &modifiable=l:oldmodifiable
"endfunction
"
colo leo
"turn off annoying bell and visual flash on error
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
