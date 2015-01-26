" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype on
filetype off
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" basic setup
if has("gui_running")
      set guioptions-=T
endif

autocmd InsertEnter * hi StatusLine term=reverse cterm=reverse gui=bold,reverse
autocmd InsertLeave * hi StatusLine term=none cterm=none gui=none
set autochdir

" these are for use with the solarized colourscheme,
" see http://ethanschoonover.com/solarized for details.
set background=dark
" colorscheme solarized

" Enable syntax highlighting
syntax on

" Enable filetype detection
filetype plugin on
filetype indent on

set clipboard=unnamed

"Default file types
set ffs=unix,dos,mac

" sets everything to spaces, 4 to a tab. I think.
set autoindent
set smartindent
" set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" better title?
set title

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" lets always use utf8, because anything else is less awesome.
set encoding=utf-8
set tenc=utf-8
set fileencoding=utf-8

" show line numbers
set number
set numberwidth=3

" set refresh on change
set autoread

" do lots of scanning on tab completion
set complete=.,w,b,u,U,t,i,d

" fix my sodding backspace pls
set backspace=indent,eol,start

" we have a fast terminal
set ttyfast

" ignore case unless searching in caps
set ignorecase
set smartcase
set hlsearch
set incsearch

" complete to longest common string, continue typing, tab some more
set wildmode=list:longest,full
set wildmenu
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,*.pyo,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,*~,._*
set showmode

set noswapfile
set nobackup
set nowritebackup

" highlight current line
set cursorline

" keep N lines of command line history
set history=500

" show the cursor position all the time, in the status line
set ruler

" Show us the command we're typing
set showcmd
set cmdheight=1
set laststatus=2

" allow me to move between buffers without remembering to save
set hidden

" Highlight matching parens
set showmatch

" Folding Stuffs
set foldmethod=syntax
set foldlevel=10
set foldlevelstart=10

" more context when scrolling
set scrolloff=3

" Space will toggle folds!
nnoremap <space> za

" stolen but a goody: keep selection after indenting
vnoremap < <gv
vnoremap > >gv

" insert mode: press ii to go back to cmd mode
" imap ii <C-[>
imap kj <C-[>
imap jk <C-[>
inoremap <Esc> <C-[>

" nicer aliases for copy/pasting
nnoremap ppp "+gP
nnoremap yyy "+y

" CTRL+e/y move 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" format the entire file
nmap <leader>fef ggVG=

" remove all trailing whitespace, so it can't bite our ass later
autocmd BufWritePre * :%s/\s\+$//e

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.less set ft=less
autocmd BufNewFile,BufRead *.{md,markdown,mdown,mkd,mkdn} set ft=markdown
autocmd BufNewFile,BufRead *.{rest,rst} set ft=rst

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
autocmd FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4
" textwidth=79

autocmd FileType rst setlocal textwidth=79

" HTML specifics.
autocmd FileType html setlocal softtabstop=4 tabstop=4 shiftwidth=4 textwidth=0 nowrap
" :normal gg=G

" plugin specific settings

" Command-T configuration
" let g:CommandTMaxHeight=20

" Indent Guides
let g:indent_guides_enable_on_vim_startup=1
