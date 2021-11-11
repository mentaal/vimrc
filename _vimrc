" Vim mode, non vi compatible
set nocompatible              " be iMproved, required
filetype off                  " required
let &shellslash=0
au FileType vundle setlocal noshellslash
set encoding=utf-8

"handle fileencodings
"if has("multi_byte")
"  if &termencoding == ""
"    let &termencoding = &encoding
"  endif
"  set encoding=utf-8
"  setglobal fileencoding=utf-8
"  "setglobal bomb
"  set fileencodings=ucs-bom,utf-8,latin1
"endif

" set the runtime path to include Vundle and initialize
if has("win32")
    set rtp+=~/vimfiles/bundle/Vundle.vim
    "let path='~/vimfiles/bundle'
    call vundle#rc('$HOME/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
    call vundle#rc()
endif
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Javascript syntax highlighting
Plugin 'pangloss/vim-javascript'

"get colorschemes
Plugin 'flazz/vim-colorschemes'

"ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

"Replace With Register
Plugin 'inkarkat/vim-ReplaceWithRegister'

"flake8 - pep8 synctax formatting for python
"Plugin 'nvie/vim-flake8'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-commentary'

Plugin 'tpope/vim-repeat'

"Syntastic
"this could be causing my vim to crash
"Plugin 'scrooloose/syntastic'

"supertab
Plugin 'ervandew/supertab'

"taglist
Plugin 'vim-scripts/taglist.vim'

"star-search
Plugin 'vim-scripts/star-search'

"Required for textobj-line
Plugin 'kana/vim-textobj-user'

"inner line text object
Plugin 'kana/vim-textobj-line'

"inner line text object
Plugin 'junegunn/fzf'

"You complete me
"Plugin 'Valloric/YouCompleteMe'
"
"seed ycm with identifiers for syntax - see
"https://github.com/Valloric/YouCompleteMe/issues/1348
"let g:ycm_seed_identifiers_with_syntax = 0
"let g:loaded_youcompleteme = 1
"


"use this for finding calling function instead
function! Csc()
  cscope find c <cword>
  copen
endfunction
command! Csc call Csc()
nnoremap <leader>fc :Csc<CR>
nnoremap <leader>cu :cs kill 0<CR>:silent !del cscope.out<CR>:silent !cscope -Rb<CR>:cs add cscope.out<CR>
"cscope
"Plugin 'vim-scripts/cscope.vim'
"Below is the minimum key mappings.
"    nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
"    nnoremap <leader>l :call ToggleLocationList()<CR>
"
""Some optional key mappings to search directly.
"
"    " s: Find this C symbol
"    nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
"    " g: Find this definition
"    nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
"    " d: Find functions called by this function
"    nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
"    " c: Find functions calling this function
"    nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
"    " t: Find this text string
"    nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
"    " e: Find this egrep pattern
"    nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
"    " f: Find this file
"    nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
"    " i: Find files #including this file
"    nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'

"get python syntax highlighting
Plugin 'hdima/python-syntax'
"use all features of the above plugin
let python_highlight_all = 1


"Python Mode
"Plugin 'klen/python-mode'
"let g:pymode_lint_write = 0       "turn off running pylint on file save
""nnoremap <leader>p :PyLint<cr>    "pressing ,p will run plyint on current buffer
""turn off obnoxious red column
"let g:pymode_options_colorcolumn = 0
""turn off annoying errors in margin
"let g:pymode_lint_signs = 0

"Hexmode
Plugin 'fidian/hexmode'
"can switch with - :Hexmode

"SystemVerilog syntax plugin
"Plugin 'cazador481/vim-systemverilog'


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

syntax on
filetype plugin indent on
"colorscheme Benokai
"set background=light
colorscheme gruvbox
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
"set scrolloff=3         " minimum lines to keep above and below cursor

set autoindent
set incsearch "start search immediately
set hlsearch
set bs=2
"set columns=80
set background=dark
"set wrapmargin=8
"also look at textwidth
set nobk
set ruler
set relativenumber

"set list listchars=tab:\|\ ,trail:.,precedes:<,extends:>
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
"set nolist 

" I like highlighting strings inside C comments
let c_comment_strings=1
set showmode
set wildmenu
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

" Show line numbers
set number

set shiftwidth=4
" Highlight matched paranthesis
"let loaded_matchparen = 1


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
if has("win32")
    nmap ,l :source ~/_vimrc<cr>
else
    nmap ,l :source ~/.vimrc<cr>
endif


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


nmap ,r :let b:match_words =  '\<task\>:\<endtask\>,' .  '\<interface\>:\<endinterface\>,' . '\<function\>:\<endfunction\>,' .  '\<begin\>:\<end\>,' . '\<class\>:\<endclass\>,' .  '\<package\>:\<endpackage\>,' . '\<program\>:\<endprogram\>,' .  '\<do\>:\<while\>,' . '\<module\>:\<endmodule\>,' . '\<case\>:\<endcase\>,' . '\<ifdef\>:\<endif\>,' . '\<generate\>:\<endgenerate\>'

if has("win32")
    nmap ,v :tabe ~/_vimrc <cr>
else
    nmap ,v :tabe ~/.vimrc <cr>
endif

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


if has("gui_running")
  if has("gui_gtk2")
    nmap <leader>co :!soscmd co %<cr>
    nmap <leader>ci :!soscmd ci %<cr>
    nmap <leader>te :!gnome-terminal &<cr>
    nmap <leader>w :!chmod +w %<cr>
    nmap <leader>r :!chmod -w %<cr>
  endif
endif
nmap ,pf :let @+ = expand("%:p")<cr>
nmap ,ph :let @+ = expand("%:p:h")<cr>
nmap ,pt :let @+ = expand("%:t")<cr>
nmap ,pn :let @+ = expand("%:t:r")<cr>
nmap <leader>o :lcd %:p:h<cr>
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
"tags for embedded wil
nmap ,ta :silent! !start cmd /c ctags -R --languages=c,c++ --c-kinds=+p -D "ADI_APOLLO_PACKED(d)=d"<CR>
nmap ,tc :silent! !start cmd /c ctags -R --languages=c,c++ --c-kinds=+p<CR>
nmap ,tp :silent! !start cmd /c ctags -R --languages=python<CR>
nmap ,ts :silent! !start cmd /c ctags -R --languages=c,c++,SystemVerilog<CR>
nmap ,ts :silent! !start cmd /c ctags -R --languages=c,c++,SystemVerilog<CR>
nmap ,tt :silent! !start cmd /k cd %:p:h<CR>
nmap ,tw :silent! !start explorer %:p:h<CR>
nmap ,tap :let &tags ='c:/projects/apex/apex_a-sample/tags,C:/Users/gkuhn/AppData/Local/Arm/Packs/AnalogDevices/tags,C:/Users/gkuhn/AppData/Local/Arm/Packs/ARM/CMSIS/5.6.0/tags'
nmap ,tae :let &tags ='c:/projects/apex/apex_a-sample/tags,c:/Users/gkuhn/IAR-CMSIS-Packs/ARM/CMSIS/5.7.0/tags,C:/Users/gkuhn/IAR-CMSIS-Packs/tags'
"nmap ,tab :let &tags ='c:\projects\emg\wbms-embedded-wil-platform\tags,C:\Analog\ Devices\AnalogDevices.WBMS-Interface-Library.0.92.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Atmel\SAMV71_DFP\2.4.182\samv71b\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS-Driver\2.4.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS\5.7.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Keil\SAM-ESV7_SFP\2.4.4\tags'
nmap ,tab :let &tags ='c:\projects\emg\wbms-embedded-wil-platform\tags,c:\Analog\ Devices\WBMS_Interface_Lib-Rel0.100.0\WIL\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Atmel\SAMV71_DFP\2.4.182\samv71b\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS-Driver\2.4.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS\5.7.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Keil\SAM-ESV7_SFP\2.4.4\tags'
nmap ,tac :let &tags ='c:\projects\emg\wbms_can_gw\tags,c:\Analog\ Devices\WBMS_Interface_Lib-Rel0.100.0\WIL\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Atmel\SAMV71_DFP\2.4.182\samv71b\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS-Driver\2.4.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\ARM\CMSIS\5.7.0\tags,c:\Users\gkuhn\AppData\Local\Arm\Packs\Keil\SAM-ESV7_SFP\2.4.4\tags'
nmap ,taa :let &tags ='c:\projects\apollo\apollo_sw_dev\tags,c:\Program\ Files\IAR\ Systems\Embedded\ Workbench\ 9.0\arm\CMSIS\tags,c:\Program\ Files\IAR\ Systems\Embedded\ Workbench\ 9.0\arm\inc\c\tags'

nmap ,, :nohls<CR>


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
    set guifont=Monospace\ 12
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

"colo leo
"turn off annoying bell and visual flash on error
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=


"search for the visually selected text
vnoremap g/ y/<C-R>"<CR>
"macro for searching through whole project for the visually selected text
vnoremap ga y:vim /<C-R>"/ **/*.c<CR>



"allow ctrlp to follow symlinks"
let g:ctrlp_follow_symlinks=1
"default to mru list 
"let g:ctrlp_cmd = 'CtrlPMRU'

"wrap around for searches
:set wrapscan

"sort a csv based on the last column
"sort /^.*,/

"works
"\ 'dir':  '\v([\/]\.(git|hg|svn)$|[\/]doc[\/](html|latex)$)',

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v([\/]\.(git|hg|svn)$|[\/](html|latex)$)',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.o$\|\.pbi$\|\.dep$\|\.html$',
    \  }


"let g:ctrlp_user_command = {
"  \ 'types': {
"    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
"    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
"    \ },
"  \ 'fallback': 'find %s -type f'
"  \ }

let g:ctrlp_show_hidden = 1

"set textwidth = 78
set textwidth=80
set colorcolumn=80

nmap ,e :Ex<cr>

"remap * to highlight searches without jumping:
"https://stackoverflow.com/questions/4256697/vim-search-and-highlight-but-do-not-jump
"nnoremap * :keepjumps normal! mi*`i<CR>
"try alternative:
"nnoremap <silent> <Leader>* :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

set tabstop=4

"highlight nonascii characters
syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=2

:inoremap \fn <C-R>=expand("%:t")<CR>


set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*\\.pytest_cache\\*  " Windows ('noshellslash')


" See  https://thoughtbot.com/blog/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --vimgrep\ $*
  set grepformat^=%f:%l:%c:%m

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0
endif
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap ,k :silent! grep! "\b<C-R><C-W>\b" . ' -G \.\(c<bar>h\)$'<CR>:cw<CR>:redraw!<CR>

" bind \ (backward slash) to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap <Leader>f :Ag<SPACE>

"gvim fullscreen
"https://github.com/movsb/gvim_fullscreen
" toggle fullscreen mode by pressing F11
noremap <f11> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleFullscreen', 0)<cr>
" toggle window transparency to 247 or 180 by pressing F12
noremap <f12> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleTransparency', "255,180")<cr>

" attempt to workaround netrw not closing buffers 
" https://github.com/tpope/vim-vinegar/issues/13#issuecomment-489440040
let g:netrw_fastbrowse = 0




"nmap ,ff  :enew|pu=system('python c:\projects\find_stuff\find_stuff.py .searchpaths' . <cword> -e c -s test')
nmap ,ff :lgete system("python c:/projects/find_stuff/find_stuff.py .searchpaths " . expand("<cword>") . " -e c -s test")


"search on selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
