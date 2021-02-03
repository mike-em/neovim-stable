" gruvbox.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  augroup END
endif

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_italicize_strings=1
let g:gruvbox_transparent_bg=1
let g:gruvbox_termcolors=256


syntax on
colorscheme gruvbox


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
    hi Normal ctermbg=NONE guibg=NONE
endif
