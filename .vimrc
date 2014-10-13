set nocompatible
set number
set ruler
set hlsearch
set showmatch
set history=1000
set fileencodings=utf-8,gb
"set background=dark
filetype on
filetype plugin on
filetype indent on
set completeopt=longest,menu
syntax enable
syntax on
set incsearch
set foldmethod=syntax
set foldlevel=50

set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

""""""""""""""""""""""""
" TagList
""""""""""""""""""""""""
" 不同时显示多个文件中的tag, 缺省为显示多个文件中的tag
let Tlist_Show_One_File=1
" 启动vim后，自动打开taglist窗口
let Tlist_Auto_Open=0
" taglist是最后一个窗口时退出vim
let Tlist_Exit_OnlyWindow=1 
" taglist实时解析文件中的tag
let Tlist_Process_File_Always=1
" 输入焦点在taglist窗口中
let Tlist_GainFocus_On_ToggleOpen=1
" 非当前文件，函数列表折叠隐藏
let Tlist_File_Fold_Auto_Close=1

noremap <silent> <F9> :TlistToggle<CR> 
nnoremap <silent> <F3> :grep<CR> 

"
""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
    if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif
" vim会根据编译器输出的错误信息，自动跳到第一个出错的地方
set cscopequickfix=s-,g-,c-,d-,i-,t-,e-,f-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""
" Quickfix
""""""""""""""""""""""""""""
nmap <F6> :cn<CR>
nmap <F7> :cp<CR>

""""""""""""""""""""""""""""
" WinManager
""""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>

""""""""""""""""""""""""""""
" MiniBufExplorer
""""""""""""""""""""""""""""
" 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows = 1
" Ctrl+tab移到下一个buffer并在当前窗口打开；
let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplorerMoreThanOne = 0
