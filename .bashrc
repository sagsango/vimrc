
" VIM Configuration File
syntax enable
set hls
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set paste
set textwidth=0
set wrapmargin=0
set t_Co=256
set showmatch
set backspace=indent,eol,start
set comments=sl:/*,mb:\ *,elx:\ */
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags+=/build/10.0/Build116_jchenFBR/cxunix/source/CommClient/CvBlkFBR/tags
set tags+=/build/10.0/Build116_jchenFBR/cxunix/source/MediaAgent/3dfs2/tags
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F5> :!ctags -R <96>c++-kinds=+p <96>fields=+iaS <96>extra=+q .<CR>
map <F6> :Dox<CR>
map <F7> :make<CR>
map <S-F7> :make clean all<CR>
map <F12> <C-]>
if &diff
map <M-Down> ]c
map <M-Up> [c
map <M-Left> do
map <M-Right> dp
map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
"     :setlocal spell spelllang=en
"     set spellfile=~/.vim/spellfile.add
map <M-Down> ]s
map <M-Up> [s
endif
colorscheme industry
set background=light
"colors desert
set nu
set bg=dark
set splitright
set fileformat=unix
set autoindent
set vb t_vb=
set noexpandtab   " Always uses tabs instead of space characters (noet).

function! UT()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
endfunction

function! US()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set autoindent    " Copy indent from current line when starting a new line.
  set paste
  set expandtab
  colorscheme delek
endfunction
"set mouse=a

