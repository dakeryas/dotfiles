autoload -Uz colors && colors
PROMPT="%(?:%{$FG[214]%}:%{$fg_bold[red]%})"
PROMPT+='%{$FG[214]%}%~%{$reset_color%}$(git_prompt_info)%{$FG[214]%}\$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[175]%}(%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[175]%})%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[175]%})"
