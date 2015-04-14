execute pathogen#infect()
syntax on
filetype plugin indent on

:colorscheme jellybeans 
syntax on

" Remove trailing whitespace
function! TrimWhiteSpace()
	    %s/\s\+$//e
endfunction

autocmd FileType python,java,javascript autocmd BufWritePre     * :call TrimWhiteSpace()

" Set tab to four spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

let g:flake8_show_in_file=1  " show

" Multicursor
let g:multi_cursor_start_key='g<C-n>'
let g:multi_cursor_start_word_key='<C-n>'


" pyflakes
filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" Enable flake8 upon witing to file
autocmd BufWritePost *.py call Flake8()

" Always show line numbers
set number
