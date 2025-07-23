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
function gstash() { 
    git num stash push "$@" 
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

function run_pipeline() {
    if [ $# -lt 3 ]; then
        echo "Usage: run_pipeline <pipeline_name> <params> <execution_name>"
        return 1
    fi

    local pipeline_name=$1
    local params=$2
    local execution_name=$3

    cd ~/figma/figma && bazel run //ml/py/figma/workbench/pipelines/make_edits/${pipeline_name}:pipeline -- dev create-pipeline --start-execution --params /home/ubuntu/figma/figma/ml/py/figma/workbench/pipelines/make_edits/${pipeline_name}/params/${params}.yaml --execution-name ${execution_name}
}

function run_pipeline_local() {
    if [ $# -lt 2 ]; then
        echo "Usage: run_pipeline_local <pipeline_name> <params>"
        return 1
    fi

    local pipeline_name=$1
    local params=$2

    cd ~/figma/figma && bazel run //ml/py/figma/workbench/pipelines/make_edits/${pipeline_name}:pipeline.local -- --params /home/ubuntu/figma/figma/ml/py/figma/workbench/pipelines/make_edits/${pipeline_name}/params/${params}.yaml
}

alias run_sm='run_pipeline'
alias run_local='run_pipeline_local'