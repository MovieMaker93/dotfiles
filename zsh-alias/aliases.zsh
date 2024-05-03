alias today='date +%Y-%m-%d'
alias md="mkdir"

# count files
alias count='find . -type f | wc -l'
alias v='nvim'
alias fv='nvim $(fzf)'

#tmux alias
alias tns='tmux new -s $(echo $(pwd) | xargs basename)'
alias tx=tmuxinator

#kubectl aliases
alias k='kubectl'
alias kl='kubectl logs'
alias kg='kubectl get $1'
alias kgy='kubectl get $1 $2 -oyaml'
alias kn='kubens'
alias kc='kubectx'

#git aliases
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gs='git status --short'
alias gst='git status'
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gb='git branch'
alias gco='git checkout'
alias gp='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gmg='git merge'

# gcap: commit all and push
gcap() {
    git commit -a -m $1
    git push
}

# gmerge: merge current branch to the given branch
gmerge() {
    branch=$(git rev-parse --abbrev-ref HEAD) && \
    echo "merging" $branch "to" $1
    git checkout $1 && \
    git merge $branch
}


# source the zsh config file
alias sc='source $HOME/.zshrc'
# edit the zsh config file
alias ec='$EDITOR $HOME/.zshrc'

# make dir and cd into it
mdcd() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

