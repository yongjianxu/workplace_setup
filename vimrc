" useful link https://blog.csdn.net/zhangpower1993/article/details/52184581

"----------------------------------------
"The following is for Vundle
"----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/winmanager'
Plugin 'derekwyatt/vim-scala'
" c++ plugin
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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
"


"---------------------------------------------------
"the following is general set up
"---------------------------------------------------
syntax enable
syntax on
"check the location for more colorscheme /usr/share/vim/vim73/colors 
colorscheme peachpuff
set nu
set mouse=a
set incsearch        " 输入字符串就显示匹配点
set hlsearch
" 基于缩进或语法进行代码折叠
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"--------------------------------------------------
"setting for cscope
"-------------------------------------------------
" add cscope.out automatically
if has("cscope")
   if filereadable("cscope.out")
	   cs add cscope.out
   endif
endif
"let mapleader = ","
"let g:mapleader = ","
"nmap <leader>s: find s<C-R>=expand("<cword>") <CR><CR>
"nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-/>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"
"--------------------------------------------------
"setting for plugins
"--------------------------------------------------
""Tlist setting
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0
nmap <F8> :Tlist<cr>

""winmanager
let g:winManagerWindowLayout='FileExplorer'
let g:persistentBehaviour=0
let g:AutoOpenWinManager=1
nmap wm :WMToggle<cr>

"------------------------------------------------
"setting for languages
"------------------------------------------------
"c++
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

