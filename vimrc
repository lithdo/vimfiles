"" 基本设置
set showmatch
set hlsearch 
set incsearch
inoremap jk <esc>


"" Vundle设置
set nocompatible              " be iMproved
filetype off                  " required!

" git clone https://github.com/gmarik/vundle.git /path/to/vundle
" ln -s /path/to/vundle/ ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'SirVer/ultisnips'


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
