

" 搜索逐字符高亮
set hlsearch
set wildmenu
"set hls
set showcmd
set history=1000
set ignorecase
"设置Tab宽度
set tabstop=2
"设置按退格键时可以一次删除2个空格
set softtabstop=2
set smarttab




"Devon Add
"vi退出后显示vi内容
"set t_ti=
"set t_te=


"光标所在行加下划线
set cursorline
hi CursorLine term=bold cterm=bold


"set cursorcolumn
"hi CursorColumn cterm=none  ctermbg=black ctermfg=white


"vim打开文件时,回到原来退出时的位置
set viminfo^=%
"取消自动添加#号
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" 随着键入即时搜索
set incsearch




" F2切换行号显示
nnoremap <F2> :set nonu!<CR>:set foldcolumn=0<CR>


" F3打开目录树
nmap <silent> <F3> :NERDTreeToggle<CR>


" F4显示TagList
nmap <silent> <F4> :TagbarToggle<CR>


" F5运行脚本
if exists("$VIRTUAL_ENV")
    autocmd FileType python map <buffer> <F5> :!$VIRTUAL_ENV'/bin/python' %<CR>
else
    autocmd FileType python map <buffer> <F5> :!python %<CR>
endif


" <F6> 新建标签页
map <F6> <Esc>:tabnew<CR>


" <F7> 拷贝粘贴代码不破坏缩进
set pastetoggle=<F7>


" <F8> sort import and auto pep8
autocmd FileType python map <buffer> <F8> :!autopep8 -i -a --ignore=W690,E501 %;isort %;<CR><CR>


" <F9> pep8 by yapf
autocmd FileType python map <buffer> <F9> :!yapf -i % --style=pep8;isort %;<CR><CR>


" vimrc文件修改之后自动加载
autocmd! bufwritepost .vimrc source %


" 文件修改之后自动载入
set autoread


" yaml file


autocmd FileType yaml setlocal et ts=2 ai sw=2 nonu sts=0
