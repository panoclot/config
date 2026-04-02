add-highlighter global/ number-lines -hlcursor -relative
add-highlighter global/ show-matching -previous
add-highlighter global/ wrap -word -indent
set-option global scrolloff 10,3
set-option global tabstop 5
set-option global indentwidth 0
set-option global aligntab true
# set-option global ui_options terminal_assistant=cat # doesnt work for some reason
set-option global ui_options terminal_enable_mouse=false
map global normal <c-u> <c-u>vv
map global normal <c-d> <c-d>vv
map global normal <c-space> <esc>
map global insert <c-space> <esc>
map global prompt <c-space> <esc>
map global normal <c-space> ';,'
map global normal <esc> ';,'
map global normal <c-n> ']pj;'
map global normal <c-p> '[p;'
map global user <l> ":bn<ret>"
map global user <h> ":bp<ret>"
map global user <q> ":db<ret>"
map global user <c> ":comment-line<ret>"
map global user <y> "<a-|>wl-copy<ret>"
map global user <p> "!wl-paste<ret>"
# colorscheme zenburn
# colorscheme ef-bio
colorscheme ef-winter
