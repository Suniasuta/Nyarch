RPROMPT="%F{yellow}%n"
PS1="%F{green}%d%F{cyan}>%F{white} "


if [ "$TERM" = "linux" ]; then
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LANGUAGE=en_US.UTF-8
    FONTFACE="JetBrains"
    echo -en "\e]P000001e" #black
    echo -en "\e]P800001e" #darkgrey
    echo -en "\e]P1e86000" #darkred
    echo -en "\e]P9e80000" #red
    echo -en "\e]P2e85a00" #darkgreen
    echo -en "\e]PAe85a00" #green
    echo -en "\e]P3e88d57" #brown
    echo -en "\e]PBe88d57" #yellow
    echo -en "\e]P4825af0" #darkblue
    echo -en "\e]PC825af0" #blue
    echo -en "\e]P5b55abd" #darkmagenta
    echo -en "\e]PDb55abd" #magenta
    echo -en "\e]P6828df0" #darkcyan
    echo -en "\e]PE828df0" #cyan
    echo -en "\e]P775006b" #lightgrey
    echo -en "\e]PF75006b" #white
    clear #for background artifacting
fi

source /home/toaster/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/toaster/.config/zsh/plugins/cd-ls/cd-ls.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history)

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '/home/toaster/.zshrc'
autoload -Uz compinit
compinit
_comp_options+=(globdots)

alias :q="exit"
alias :Q="exit"
alias cr="cargo r"
alias cl="clear"
alias russy="cargo b"


/home/toaster/.config/zsh/tv-bars.sh
