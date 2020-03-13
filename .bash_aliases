# Git aliases
alias gg='git log --all --graph --oneline --decorate=short'
alias ll='ls -al'
#alias diff-pdf='~/bin/diff-pdf-win-0.3/diff-pdf.exe'
alias ggs='git log --all --graph --oneline --decorate=short --stat'
alias ggno='git log --all --graph --oneline --decorate=short --name-only'
alias ggns='git log --all --graph --oneline --decorate=short --name-status'
alias gs='git status'
alias gb='git branch'
alias gba='git branch --all'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --staged'
alias gcp='git cherry-pick'
alias gaa='git add --all'

# Nissan CAN testing aliases
alias lbcY='cansend slcan0 1DB#7F.E0.FF.C6.00.00.00.DE'
alias lbcN='cansend slcan0 1DB#00.18.A3.6E.00.00.03.00'
