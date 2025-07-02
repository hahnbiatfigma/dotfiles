alias gs="git num"
alias ga="git num add"
alias gr="git num reset"
alias gco="git num checkout"
alias gd="git num diff"
alias gds="git num diff --staged"

function gnc() { 
    git num convert "$@" 
}
function gac() { 
    git num add "$@" && git commit 
}
function gdel() { 
    git num convert "$@" | xargs rm 
}
function pr() {
    BRANCH="$(git rev-parse --abbrev-ref HEAD)"
    git push -u origin "$BRANCH"
    echo "https://github.com/figma/figma/compare/${BRANCH}"
}
alias gb="git branch -v --sort=committerdate"
alias ff="cd ~/figma/figma"
function fs() { 
    ~/figma/figma/fullscreen/fs "$@"; 
}
alias cddev="cd ~/dev"