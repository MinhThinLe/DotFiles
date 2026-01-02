# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename "$HOME/.zshrc"
bindkey -v

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install
eval "$(starship init zsh)"

alias ls='eza'
alias l='ls'
alias cat='bat'
alias grep='rg'
alias rpi-ssh='ssh -i ~/.ssh/id_rsa rpi@192.168.1.31'
alias debbie-ssh='ssh -i ~/.ssh/debian-server debbie@192.168.1.32'
alias reload='source ~/.zshrc'

export PATH=$HOME/.local/bin:$PATH
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
export BAT_THEME="gruvbox-dark"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
