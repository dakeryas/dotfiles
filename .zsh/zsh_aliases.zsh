alias pl='print -l'
if command -v gls >/dev/null 2>&1; then
    alias ll='gls -lh --group-directories-first --color=auto'
else
    alias ll='ls -lh'
fi
if command -v ccat >/dev/null 2>&1; then
    alias cat='ccat --bg=dark'
fi
alias lt='ll -t'
alias la='ll -a'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias par='parallel -k --verbose'

function set_iTerm2_mode(){
    local mode=$1
    echo -e "\033]1337;SetColors=preset=${mode}\a"
}

function is_osx_dark(){
    theme=$(defaults read -g AppleInterfaceStyle) 2>/dev/null
    [[ $theme == "Dark" ]]
    return
}

function switch_osx_appearance(){
    local dark_mode="Dark Background"
    local light_mode="BlulocoLight"
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'
    is_osx_dark && set_iTerm2_mode $dark_mode || set_iTerm2_mode $light_mode
}

unset is_osx_dark
