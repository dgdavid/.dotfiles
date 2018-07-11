HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

source ~/.zplug/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug zsh-users/zsh-syntax-highlighting, defer:2
zplug b4b4r07/zsh-vimode-visual, defer:3
zplug b4b4r07/httpstat, as:command, use:'(*).sh', rename-to:'$1'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "> Do you want install unavailable plugins listed above? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zshrc.after ] && source ~/.zshrc.after
