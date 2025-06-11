function gbnew -d "create a new branch from origin/main" -a "branch_name"
  echo "Creating new branch $branch_name from origin/main"
  git fetch origin
  git checkout -b $branch_name origin/main
end