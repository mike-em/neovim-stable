" Basic Key Mappings

imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

if exists('g:vscode')

  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else

  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <silent> <S-TAB> :bprevious<CR>

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv

  " Alternate way to save
  " nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <silent> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Better window navigation
  nnoremap <Leader>h <C-w>h
  nnoremap <Leader>j <C-w>j
  nnoremap <Leader>k <C-w>k
  nnoremap <Leader>l <C-w>l

  " Terminal window navigation
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>


  nnoremap <Leader>\ :vertical resize +5<CR>
  nnoremap <Leader>` :vertical resize -5<CR>
  nnoremap <Leader>vr :vertical resize 50<CR>

  nnoremap <Leader>; :vsplit<CR>
  nnoremap <Leader>= :split<CR>

  nnoremap <Leader>q :qa<CR>
  nnoremap <Leader>r :q<CR>
  nnoremap <Leader>w :w<CR>
  nnoremap <Leader>a <cmd>Alpha<CR>

  " Use alt + hjkl to resize windows
  " nnoremap <silent> <M-j>    :resize -2<CR>
  " nnoremap <silent> <M-k>    :resize +2<CR>
  " nnoremap <silent> <M-h>    :vertical resize -2<CR>
  " nnoremap <silent> <M-l>    :vertical resize +2<CR>

  " nnoremap <silent> <C-Up>    :resize -2<CR>
  " nnoremap <silent> <C-Down>  :resize +2<CR>
  " nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  " nnoremap <silent> <C-Right> :vertical resize +2<CR>

  " let g:elite_mode=0                      " Disable arrows"
  " " Disable arrow movement, resize splits instead.
  " if get(g:, 'elite_mode')
  "     nnoremap <C-Up>    :resize -2<CR>
  "     nnoremap <C-Down>  :resize +2<CR>
  "     nnoremap <C-Left>  :vertical resize -2<CR>
  "     nnoremap <C-Right> :vertical resize +2<CR>
  " endif

endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Folding
" zc - close a fold
" zo - open fold
" za - toggle fold
" zC, zO, zA similar but for all folds at level
" zR - opens all folds
" zM - close all folds

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

noremap <leader>ra :%bd\|e#\|bd#<cr>\|'"
