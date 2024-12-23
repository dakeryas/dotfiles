zmodload zsh/mathfunc
autoload zmv

[[ -f $(which env_parallel.zsh) ]] && source $(which env_parallel.zsh)
typeset -U path PATH
path+=(~/.local/bin)
