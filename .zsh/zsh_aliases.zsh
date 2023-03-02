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

function switch_osx_appearance() {
    local dark_mode="Dark Background"
    local light_mode="BlulocoLight"
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'
    theme=$(defaults read -g AppleInterfaceStyle) 2>/dev/null
    [[ $theme == "Dark" ]] && echo -e "\033]1337;SetColors=preset=$dark_mode\a" \
        || echo -e "\033]1337;SetColors=preset=$light_mode\a"
}
