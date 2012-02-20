set autowrite
set background=light
set backspace=1
set backup
set backupdir=~/.autosave
set makeprg=make
set nocompatible
set cmdheight=2
set noexpandtab
set nosmartindent
set notextauto
set notextmode
set notitle
set nohlsearch
set path+=/usr/include,/usr/X11/include,/usr/local/include,/usr/include/g++,/opt/llvm29/include,.,..
set ruler
set shiftwidth=4
set showcmd
set shortmess=ao
set tabstop=4
set vb t_vb=
set viminfo='20,ra:,rb:,\"50	

let g:explVertical=1
let g:explSplitRight=1
let g:explStartRight=0
let g:explHideFiles='^\.,\.py.$'
let python_highlight_all=1

noremap ,vimrc :split ~/.vimrc<Return>
noremap <F1> :n<Return>
noremap <F2> :N<Return>
noremap <F3> /<C-R>"<Return>
noremap <S-F3> byw/<C-R>"<Return>
noremap <F4> :cn<Return>
noremap <S-F4> :cN<Return>
noremap <F5> :make run<Return>
"noremap <F6> :s/\/\///<Return>
"noremap <F7> :s/^/#/<Return>
noremap <F8> :s/^#//<Return>
noremap <F7> :wall<Return>:make<Return>
noremap <F10> :wall<Return>:make run<Return>
noremap <S-F10> !!ctags *.[ch]*
noremap <F11> <C-W>=
noremap <F12> <C-W>_

inoremap <F1> <Esc>:n<Return>i
inoremap <F2> <Esc>:N<Return>i
noremap <F3> <Esc><C-V><C-W>W
imap <F4> <Esc><F4>i
imap <S-F4> <Esc><F4>i



" When starting to edit a file:
"   For *.c* and *.h files set formatting of comments and set C-indenting on
"   For other files switch it off
"   Don't change the sequence, it's important that the line with * comes first.

if has("autocmd")
	augroup cprog
		autocmd BufNewFile	*.c*				0r ~/.vim/skeleton.c
		autocmd BufNewFile	*.h,*.hh			0r ~/.vim/skeleton.h
		autocmd BufNewFile	*.h,*.hh			normal 1G"ad4d@a
		autocmd FileType	c,cc,h,hh,C,cpp,cxx set smartindent
	augroup END

	augroup pythonprog
		autocmd BufNewFile			*.py	0r ~/.vim/skeleton.py
		autocmd BufNewFile,BufRead	*.py	set expandtab smartindent tabstop=4
		autocmd BufNewFile,BufRead	*.py	set foldmethod=marker
		"autocmd BufNewFile,BufRead	*.py	set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l, in %.%#\n[%^\ ]%\\@=%m
	augroup END

	autocmd BufNewFile,BufRead	*	set formatoptions=tcql nocindent comments&
	autocmd BufNewFile			*.html	0r ~/.vim/skeleton.html
	autocmd BufNewFile,BufRead	*.ps				source ~/.vim/ps.vim
	"autocmd BufNewFile,BufRead	*.tex				source ~/.vim/tex.vim
	autocmd BufNewFile,BufRead	*.java				source ~/.vim/java.vim
	autocmd BufNewFile,BufRead	*.nat				source ~/.vim/nat.vim
	autocmd BufNewFile,BufRead	ChangeLog			source ~/.vim/change.vim
endif

if has("terminfo")
  set t_Co=8
  set t_Sf=[3%p1%dm
  set t_Sb=[4%p1%dm
else
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax on
