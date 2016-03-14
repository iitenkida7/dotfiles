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
"tree explorer
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" SVNの差分見るやつ（スゲー重かったので一旦、無効に、環境の問題？）
" NeoBundle 'vim-scripts/vim-svngutter'

" ステータスバーなやつ
NeoBundle 'itchyny/lightline.vim'
set t_Co=256
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


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
"set hidden
"set nowrap
set paste

" 全角表示のフォロー
set ambiwidth=double
set hlsearch
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set ff=unix
