
set encoding=utf-8
set nocompatible                " be iMproved, required
filetype off                    " required

""" General {{{
set history=256                 " Number of things to remember in history.
set autowrite                   " Writes on buffer switch, make/shell commands
set autoread                    " Reload file on buffer switch.
set clipboard+=unnamed          " Yanks go on clipboard instead.
set pastetoggle=<F10>           " Toggle between paste and normal: for 'safer' pasting from keyboard
set tags=./tags;$HOME           " walk directory tree upto $HOME looking for tags
"" Modeline
" modelines allow you to set variables specific to a file. The first and last five lines are read by vim for variable settings. Example: /* vim: tw=60 ts=2: */ .Get a textwidth of 60 chars when editing that file.
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
"" Backup
set backupdir=~/.vim/tmp,.      " You have to create a directory in your home directory called ~/.vim/tmp for this to work. Fallback to the current directory
set directory=~/.vim/tmp,.
"" Match and Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
""" }}}

""" Formatting {{{
" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
" Automatic indentation
set autoindent
syntax on                       " enable syntax
filetype plugin indent on       " Automatically detect file types.
""" }}}

""" Visual {{{
set number                      " Enable page numbers
set novisualbell                " No blinking.
set noerrorbells                " No noise.
set splitbelow                  " Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitright
colorscheme molokai             " Source: https://github.com/tomasr/molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
""" }}}

""" Command and Auto commands {{{
"Auto commands
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru}     set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit
" The following snippet which triggers autoread whenever I switch buffer or when focusing vim. https://stackoverflow.com/questions/2490227/how-does-vims-autoread-work
au FocusLost,WinLeave * :silent! noautocmd w
""" }}}

""" Key mappings {{{
map <silent> <F12> :set invlist<CR>
 """ }}}

""" Vundle Plugins {{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
set laststatus=2
" Plugin 'wincent/command-t'   " https://github.com/wincent/command-t/blob/master/doc/command-t.txt
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()               " All of your Plugins must be added before this line
""" }}}
