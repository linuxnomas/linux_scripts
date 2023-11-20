"############################################################################
"
" ooooo        ooooo ooooo      ooo ooooo     ooo ooooooo  ooooo 
" `888'        `888' `888b.     `8' `888'     `8'  `8888    d8'  
" 888          888   8 `88b.    8   888       8     Y888..8P    
" 888          888   8   `88b.  8   888       8      `8888'     
" 888          888   8     `88b.8   888       8     .8PY888.    
" 888       o  888   8       `888   `88.    .8'    d8'  `888b   
" o888ooooood8 o888o o8o        `8     `YbodP'    o888o  o88888o

" ooooo      ooo   .oooooo.   ooo        ooooo       .o.       oooooooooo.   
" `888b.     `8'  d8P'  `Y8b  `88.       .888'      .888.      `888'   `Y8b  
" 8 `88b.    8  888      888  888b     d'888      .8"888.      888      888 
" 8   `88b.  8  888      888  8 Y88. .P  888     .8' `888.     888      888 
" 8     `88b.8  888      888  8  `888'   888    .88ooo8888.    888      888 
" 8       `888  `88b    d88'  8    Y     888   .8'     `888.   888     d88' 
" o8o        `8   `Y8bood8P'  o8o        o888o o88o     o8888o o888bood8P'   
"
"############################################################################

" Vim configuration file "
"!!! COPY THIS FILE TO YOUR HOME FOLDER !!!"

" enable mouse support "
set mouse=a

" enable syntax "
syntax on

" enable line numbers "
set number

" highlight current line "
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" enable highlight search pattern "
set hlsearch

" enable smartcase search sensitivity "
set ignorecase
set smartcase

" Indentation using spaces "
" tabstop:	width of tab character
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop	=4
set softtabstop	=4
set shiftwidth	=4
set textwidth	=79
set expandtab
set autoindent

" show the matching part of pairs [] {} and () "
set showmatch

" remove trailing whitespace from Python and Fortran files "
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

" enable color themes "
if !has('gui_running')
	set t_Co=256
endif
" enable true colors support "
set termguicolors
" Vim colorscheme "
colorscheme desert

"-------------------------------------------------------------"
"Bonus. " Find & Replace (if you use the ignorecase, smartcase these are mandatory) "
"            :%s/<find>/<replace>/g   "replace global (e.g. :%s/mass/grass/g)"
"            :%s/<find>/<replace>/gc  "replace global with confirmation"
"            :%s/<find>/<replace>/gi  "replace global case insensitive"
"            :%s/<find>/<replace>/gI  "replace global case sensitive"
"            :%s/<find>/<replace>/gIc "replace global case sensitive with confirmation"

"        " Vim (book)marks "
"            mn     "replace n with a word A-Z or number 0-9"
"            :'n     "go to mark n"
"            :`.     "go to the last change"
"            :marks  "show all declared marks"
"            :delm n "delete mark n"

"        " Delete range selection "
"            :<line_number>,<line_number>d "(e.g. :2,10d deletes lines 2-10)"

"        " LaTeX shortcuts "
"            nnoremap <F1> :! pdflatex %<CR><CR>
"            nnoremap <F2> :! bibtex $(echo % \| sed 's/.tex$//') & disown<CR><CR>
"            nnoremap <F3> :! evince $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
"            nnoremap <F4> :! rm *.log *.aux *.out *.blg & disown<CR><CR>
