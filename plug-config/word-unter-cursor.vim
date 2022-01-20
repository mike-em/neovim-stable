" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 1

let g:vim_current_word#highlight_only_in_focused_window = 1

autocmd BufAdd NERD_tree_*,*.jsx,*.scss,*.js :let b:vim_current_word_disabled_in_this_buffer = 1

hi CurrentWord guibg=#5f5f87 
hi CurrentWordTwins guibg=#4e4e4e

" hi CurrentWord guifg=#XXXXXX guibg=#XXXXXX gui=underline,bold,italic ctermfg=XXX ctermbg=XXX cterm=underline,bold,italic
"                     └┴┴┴┴┴──┐     └┴┴┴┴┤     └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤         └┴┤         └┴┤       └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤
"  gui-vim font color hex code│          │   gui-vim special styles│           │           │ console-vim special styles│
"  ───────────────────────────┘          │   ──────────────────────┘           │           │ ──────────────────────────┘
"       gui-vim background color hex code│     console-vim font term color code│           │
"       ─────────────────────────────────┘     ────────────────────────────────┘           │
"                                                    console-vim background term color code│
"                                                    ──────────────────────────────────────┘

" hi CurrentWordTwins guifg=#XXXXXX guibg=#XXXXXX gui=underline,bold,italic ctermfg=XXX ctermbg=XXX cterm=underline,bold,italic
"                          └┴┴┴┴┤        └┴┴┴┴┤     └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤         └┴┤         └┴┤       └┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┤
"    gui-vim font color hex code│             │   gui-vim special styles│           │           │ console-vim special styles│
"    ───────────────────────────┘             │   ──────────────────────┘           │           │ ──────────────────────────┘
"            gui-vim background color hex code│     console-vim font term color code│           │
"            ─────────────────────────────────┘     ────────────────────────────────┘           │
"                                                         console-vim background term color code│
"                                                         ──────────────────────────────────────┘
"




