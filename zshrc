
if [ "$TERM" = "linux" ]; then
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
FONTFACE="JetBrainsMono Nerd Font Mono"
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# themes
# pure
# fpath+=/home/toaster/.config/zsh/pure
# autoload -U promptinit; promptinit
# prompt pure
#plugins
#



source /home/toaster/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/toaster/.config/zsh/plugins/cd-ls/cd-ls.zsh
source /home/toaster/.config/zsh/plugins/fzf-tab/fzf-tab.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history)

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '/home/toaster/.zshrc'
autoload -Uz compinit
compinit
_comp_options+=(globdots)

alias :q="ranger"
alias :Q="ranger"
alias lcava="LC_ALL=en_US.UTF-8 cava"

export PAGER=nvimpager
export VISUAL=neovim
export EDITOR=neovim

source /home/toaster/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source /home/toaster/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source /home/toaster/.p10k.zsh


/home/toaster/.config/zsh/tv-bars.sh
# neofetch | lolcat
bindkey -v
