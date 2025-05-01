if status is-interactive
  abbr -a gss 'git status -s'
  abbr -a --set-cursor='%' -- gcmsg 'git commit -m "%"'
  abbr -a -- gp 'git push'
  abbr -a -- gpf 'git push -f'
  abbr -a -- gd 'git diff'
  abbr -a -- gl 'git pull'
  abbr -a -- gappend 'git commit --all --amend --no-edit'
  abbr -a -- gf 'git fetch'
  abbr -a -- ga 'git add'
  abbr -a -- gaa 'git add --all'

  # rebase
  abbr -a -- grb 'git rebase'
  abbr -a -- grbc 'git rebase --continue'
  abbr -a -- grba 'git rebase --abort'
  abbr -a -- grbi 'git rebase --interactive'
  abbr -a -- grbm 'git rebase origin/main'

  # logs
  abbr -a --  glog 'git log --oneline --decorate --graph'
  abbr -a --  gloga  'git log --oneline --decorate --graph --all'
end