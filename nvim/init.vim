let g:k_nvim_dotfiles_dir = expand('<sfile>:p:h')
let g:k_dotfiles_dir = expand('<sfile>:p:h:h')
let &runtimepath = g:k_nvim_dotfiles_dir.','.&runtimepath.','.g:k_nvim_dotfiles_dir.'/after'

let g:vim_ide = 1
let g:dotfiles_rainbow_indent_opacity = 0.5

source <sfile>:p:h/../dmitmel-dotfiles/nvim/init.vim

if has('nvim')
  luafile <sfile>:p:h/init.lua
else
  set termguicolors
endif

" Arrow key fix kanged from <https://vim.fandom.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell#Solution_21> {{{
  if exists("g:HELP_MY_ARROW_KEYS_ARE_BROKEN")
    " the following simply creates an ambiguous mapping so vim fully
    " processes the escape sequence for terminal keys, see 'ttimeout' for a
    " rough explanation, this just forces it to work
    if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
      inoremap <silent> <C-[>OC <RIGHT>
    endif
  endif
" }}}
