# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.zsh/p10k.zsh ]] || source ~/.zsh/p10k.zsh

source ~/.zsh/custom-zsh-config
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# My Configs
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias ip="ip -color"

alias trash="gio trash"
alias open="gio open"

alias mvi="cd /home/.Movies"
alias mvis="cd /home/.Movies/series"
alias ..="cd .."
