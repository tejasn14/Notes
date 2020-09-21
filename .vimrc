syntax on

set mouse=a
set relativenumber
set smartindent
set noswapfile
"set nobackup
set undodir=~/.vim/undodir
set undofile

call plug#begin('~/.vim/plugged')

Plug 'dkarter/bullets.vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

"Show n of m results in search
Plug 'google/vim-searchindex'
Plug 'neoclide/coc-tslint'
"Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
"If markdown preview not working ---
"Firstly, type :mess in vim, if you get some errors about node.js , then you
"probably not install the plugin correctly. You can install yarn for your os
"and cd ~/.vim/bundle/markdown-preview.nvim/app && yarn.

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

call plug#end()

" let g:coc_global_extensions = [ 'coc-tsserver' ]

:imap kj <Esc>

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'js=javascript', 'json=javascript', 'css']
set background=dark
nnoremap ; :
nnoremap : ;
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set hlsearch
set incsearch
set ignorecase

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

"Relative Line numbers
set number relativenumber
"Normal line numbers when the window in not in focus
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END 

"Find options
set path+=** 				"find also in the subfiles and folders 
set wildignore+=**/node_modules/** 	"ignores the node modules in the find
set wildmenu 				"for tab completion
set hidden				"also find in hidden buffers
 
" Tab navigation to go to next and previous buffer 
" <CR> is enter key press 
nnoremap [	 :bp<CR>
nnoremap ]	 :bn<CR>
nnoremap \ 	 :buffers<CR>

" Source Vim configuration file and install plugins
" default leader is /
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" " Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)
" " GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
