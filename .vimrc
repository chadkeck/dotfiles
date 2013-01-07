set nocompatible      " be iMproved
filetype off          " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
"Bundle 'kana/vim-ku'
Bundle 'vim-scripts/mru.vim'
Bundle 'vim-scripts/ctags.vim--Johnson'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'matchit.zip'
Bundle 'ctrlp.vim'
Bundle 'SuperTab-continued.'
"Bundle 'rails.vim'
"Bundle 'majutsushi/tagbar'
Bundle 'Indent-Guides'
Bundle 'groenewege/vim-less'

"set cursorline
"hi CursorLine ctermbg=7

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" foo_bar to fooBar
map <F3> :s#_\(\l\)#\u\1#g<CR>

" fooBar to foo_bar
map <F4> :s#\(\<\u\l\+\|\l\+\)\(\u\)#\l\1_\l\2#g

map <F5> :mksession!<CR>
"map <Leader-l> :MRU<CR>

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" JavaScript fun
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


" set SuperTab's default completion to omni
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionType = "context"
" set the omni complete menu to white text on blue bg
highlight Pmenu ctermbg=4 ctermfg=7 gui=bold



map ,cc :make<CR>:botright copen<CR>
map ,n :cn<CR>
map ,p :cp<CR>
"map <C-L> :%!jsbeautify %<CR>
"map <C-K> :make<CR>:cope<CR>

"map <C-S> :mksession!<CR> " fucks with command-t


" ctags stuff
"let g:ctags_regenerate = 0
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/ " look up until a tags file is found

" fugitive
map <C-g> :Gstatus<CR>:res +30<CR>

syntax on
set background=light
set nowrap

" don't show folds less than 300 lines long
set foldlevel=300

if has("autocmd")
  filetype plugin indent on
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned
set hlsearch            " Highlight search terms
map <CR> :nohlsearch<CR>
set pastetoggle=<F2>    " Enter paste mode so indenting isn't borked

let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_enable_highlighting = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType haml setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2

let g:EasyMotion_leader_key = ','
hi EasyMotionTarget term=standout cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red

set list
set listchars=tab:↪\ ,

" Backspace remap
imap  <Left><Del>
set backspace=""

set laststatus=2 " Always show status line
if has('statusline')
   " Status line detail:
   " %f     file path
   " %y     file type between braces (if defined)
   " %([%R%M]%)   read-only, modified and modifiable flags between braces
   " %{'!'[&ff=='default_file_format']}
   "        shows a '!' if the file format is not the platform
   "        default
   " %{'$'[!&list]}  shows a '*' if in list mode
   " %{'~'[&pm=='']} shows a '~' if in patchmode
   " (%{synIDattr(synID(line('.'),col('.'),0),'name')})
   "        only for debug : display the current syntax item name
   " %=     right-align following items
   " #%n    buffer number
   " %l/%L,%c%V   line number, total number of lines, and column number
   function SetStatusLineStyle()
     let &stl="%f %y%([%R%M]%)%{'!'[&ff=='".&ff."']}%{'$'[!&list]}%{'~'[&pm=='']}%=#%n %l/%L,%c%V "
   endfunc
   " Switch between the normal and vim-debug modes in the status line
   nmap _ds :call SetStatusLineStyle()<CR>
   call SetStatusLineStyle()
endif

" Tell vim to remember certain things when we exit
" '10  :  marks will be remembered for up to 10 previously edited files
" "100 :  will save up to 100 lines for each register
" :20  :  up to 20 lines of command-line history will be remembered
" %    :  saves and restores the buffer list
" n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

set colorcolumn=81
hi ColorColumn ctermbg=7

set cursorline
hi CursorLine ctermbg=7 cterm=none
