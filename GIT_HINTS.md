# Some hints on git usage on this repo
deploy components and scripts for RCM

clone one branch of this repo with all its external submodules:

    git clone --recursive  --branch <branch name> https://github.com/RemoteConnectionManager/CINECA_RCM_deployments.git <folder name>

Update and checkout all submodules to their branches specified in .gitsubmodules

    git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'

The external submodules have been added with this comand:
    
    git submodule add -b master https://github.com/RemoteConnectionManager/RCM.git RCM

Extract working copy and history from a branch by remove everything that does not match with some paths regex

obtained by extracting history from old repo:
from: https://stackoverflow.com/questions/32940679/how-do-i-git-subtree-split-but-maintain-the-full-folder-hierarchy
see answer: 2) Export any set of files (more complex)


    git filter-branch --index-filter 'git ls-files | grep -v "^recipes/hosts/galileo/\|^recipes/hosts/marconi/\|^recipes/hosts/davide/"  | xargs --no-run-if-empty git rm --cached'; HEAD


    

