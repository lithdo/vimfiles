"" 基本设置
set showmatch
set hlsearch 
set incsearch
inoremap jk <esc>

"" 编辑模式下光标移动（模仿bash）
inoremap <C-e> <esc>A
inoremap <C-a> <esc>I
inoremap <C-u> <esc>d0xi
inoremap <C-k> <esc>ld$a
inoremap <C-b> <esc>i
inoremap <C-f> <esc>la
inoremap <C-d> <esc>lxi

"" Vundle设置
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:

" Ultisnips
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" NerdTree
Plugin 'scrooloose/nerdtree'

" Emmet
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins


"" Tab相关设置
"" 
"" shiftwidth   
""      指定程序中自动缩进所使用的空白长度。
"" tabstop
""      指定'\t'字符所等同的空格长度，一般设为8。
"" softtabstop
""      一旦设置了softtabstop的值时，你按下tab键，
""      插入的是空格和tab制表符的混合，具体如何混
""      合取决于你设定的softtabstop。举个例子，如
""      果设定softtabstop=8, 那么按下tab键，插入
""      的就是正常的一个制表符;如果设定 softtabstop=16,
""      那么插入的就是两个制表符；如果softtabstop=12,
""      那么插入的就是一个制表符加上4个空格；如果
""      softtabstop=4呢？那么一开始，插入的就是4个
""      空格，此时一旦你再按一次tab，这次的四个空格
""      就会和上次的四个空格组合起来变成一个制表符。
"" expandtab
""      按下<Tab>键时，将制表符转换为相应个数的空格。
""      这时，要输入制表符，用CTRL-V<Tab>。
set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab


"" 开启文件类型检测
"" 参考http://easwy.com/blog/archives/advanced-vim-skills-filetype-on/。
if has("autocmd")
    filetype on         " 打开文件类型检测功能
    filetype plugin on  " 允许加载文件类型插件
    filetype indent on  " 允许为不同类型的文件定义缩进格式
else
    set autoindent      " 自动缩进
endif " has("autocmd")


"" 终端支持颜色时，开启语法高亮
if &t_Co > 1
    syntax enable
endif


"" 支持中文编码
"" 参考http://edyfox.codecarver.org/html/vim_fileencodings_detection.html
set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
set encoding=utf-8  " 文件保存时始终用utf-8编码


"" <c-y>输入digraph特殊字符，原<c-k>被UltiSnips占用了
"" 例： dr ┌
""      vr ├
""      ur └
""      hh ─
""      vv │
inoremap <c-y> <c-k>


"" 使<c-x><c-o>自动补全HTML标签
if has("autocmd")
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif


"" Vala语法高亮设置（https://wiki.gnome.org/Projects/Vala/Vim）
" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120
