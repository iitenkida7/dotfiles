"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'tomasr/molokai'



" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set mouse=a
let g:molokai_original = 1
let g:rehash256 = 1

"---------------------------------------------------

"vimの改行時に自動でコメントが挿入されるのをやめたい人向けです。
autocmd FileType * setlocal formatoptions-=ro


filetype plugin indent on
"-------------NeoBundle----------------------------
syntax on
colorscheme molokai
set number
"set backspace=indent,eol,start
"set clipboard=unnamed,autoselect
"set noswapfile
"set ttyfast
"set t_Co=256
"set hidden
"set nowrap
set paste

"一部の全角記号の表示がおかしくなることってありませんか？
set ambiwidth=double
set hlsearch
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set ff=unix
