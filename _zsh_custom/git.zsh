function undoAll() {
  git add .
  git stash
  git stash drop
}

function undoLastCommit() {
  git reset --hard HEAD~1
}

function ginit() {
  git init
  git add .
  git commit -m "init"
}

alias gappend="git commit --all --amend --no-edit"
