if status is-interactive
  abbr -a gss 'git status -s'
  abbr -a --set-cursor='%' -- gcm 'git commit -m "%"'
  abbr -a -- gp 'git push'
  abbr -a -- gpf 'git push -f'
  abbr -a -- gd 'git diff'
  abbr -a -- grb 'git rebase'
  abbr -a -- grbc 'git rebase --continue'
  abbr -a -- grba 'git rebase --abort'
  abbr -a -- grbi 'git rebase --interactive'
  abbr -a -- grbm 'git rebase origin/main'
end