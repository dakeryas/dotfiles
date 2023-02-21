zmodload zsh/mathfunc
autoload zmv

[[ -f $(which env_parallel.zsh) ]] && source $(which env_parallel.zsh)
export PATH=$HOME/Software/bin:$PATH
