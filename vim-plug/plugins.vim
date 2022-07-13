" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'morhetz/gruvbox'
    Plug 'lifepillar/vim-gruvbox8'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'joshdick/onedark.vim'

    Plug 'puremourning/vimspector'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    Plug 'tpope/vim-commentary'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    Plug 'norcalli/nvim-colorizer.lua'

    Plug 'junegunn/rainbow_parentheses.vim'

    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    Plug 'honza/vim-snippets'

    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    Plug 'justinmk/vim-sneak'

    Plug 'mhinz/vim-startify', {'branch': 'center'}

    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'folke/which-key.nvim'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    " git lens
    Plug 'APZelos/blamer.nvim'
    Plug 'goolord/alpha-nvim'
    
    " highlight word under the cursor
    Plug 'dominikduda/vim_current_word'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
