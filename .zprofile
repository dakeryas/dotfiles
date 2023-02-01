# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -f $(which env_parallel.zsh) ]] && source $(which env_parallel.zsh)
# Set PATH, MANPATH, etc., for MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"
