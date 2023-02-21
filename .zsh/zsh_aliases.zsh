alias pl='print -l'
if command -v gls >/dev/null 2>&1; then
    alias ll='gls -lh --group-directories-first --color=auto'
else
    alias ll='ls -lh'
fi
alias lt='ll -t'
alias la='ll -a'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias par='parallel -k --verbose'
[[ -f /Applications/DeaDBeeF.app/Contents/MacOS/DeaDBeeF ]] && alias deadbeef='/Applications/DeaDBeeF.app/Contents/MacOS/DeaDBeeF'

function switch_osx_appearance() {
    local dark_mode="Dark Background"
    local light_mode="BlulocoLight"
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'
    theme=$(defaults read -g AppleInterfaceStyle) &>/dev/null
    [[ $theme == "Dark" ]] && echo -e "\033]1337;SetColors=preset=$dark_mode\a" \
        || echo -e "\033]1337;SetColors=preset=$light_mode\a"
}
