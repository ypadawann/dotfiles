" git clone git://github.com/Shougo/neobundle.vim ~/home/name/vimfiles
" :NeoBundleInstall

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" rubyでのみvim-rubyを読み込む
" https://github.com/vim-ruby/vim-ruby
NeoBundleLazy 'vim-ruby/vim-ruby' ,{
\    "autoload" : {"filetypes" : ["ruby"]}
\}

syntax on


set nocompatible

set bg=light

"フォーマット"
set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fencs=utf-8
set fileformats=unix,dos,mac

"行表示
set relativenumber
set numberwidth=4

set cursorline
hi CursorLineNr term=bold   cterm=NONE ctermfg=228 ctermbg=NONE

"タブ表示
set tabstop=2
set shiftwidth=2

"エイリアス"
command F VimFiler
command FE VimFilerExplorer

"lightline.vim
set laststatus=2

"入力補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
