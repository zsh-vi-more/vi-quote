#!/usr/bin/env zsh
# {{{ Handle fpath/$0
# ref: zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
[[ $zsh_loaded_plugins[-1] != */evil-registers && -z $fpath[(r)${0:h}] ]] &&
	fpath+=("${0:h}")
# }}}
# toggle quotes around a motion
autoload -Uz vi-quote
zle -N vi-quote
zle -N vi-unquote vi-quote
bindkey -a 'Q' vi-unquote
bindkey -a 'q' vi-quote
