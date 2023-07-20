set encoding=utf-8
scriptencoding utf-8
set t_Co=256
set wildoptions=pum
set iminsert=0
set splitright

set clipboard+=unnamed

let g:denops#deno = '/Users/ishikawa/.deno/bin/deno'



if filereadable(expand('~/.config/nvim/rc/install_dein.plugin'))
	source ~/.config/nvim/rc/install_dein.plugin
endif

" if filereadable(expand('~/.config/nvim/rc/exec_dein.plugina'))
" 	source ~/.config/nvim/rc/exec_dein.plugin
" endif

syntax enable

if filereadable(expand('~/.config/nvim/rc/colorscheme.plugin'))
	source ~/.config/nvim/rc/colorscheme.plugin
endif

if filereadable(expand('~/.config/nvim/rc/keymap.plugin'))
	source ~/.config/nvim/rc/keymap.plugin
endif

if filereadable(expand('~/.config/nvim/rc/command_alias.plugin'))
	source ~/.config/nvim/rc/command_alias.plugin
endif

" if filereadable(expand('~/.config/nvim/rc/inactive_dark.plugin'))
" 	source ~/.config/nvim/rc/inactive_dark.plugin
" endif
