
Here we collect recipes for RCM deploy on CINECA clusters

obtained by extracting history from old repo:
from: https://stackoverflow.com/questions/32940679/how-do-i-git-subtree-split-but-maintain-the-full-folder-hierarchy
see answer: 2) Export any set of files (more complex)


git filter-branch --index-filter 'git ls-files | grep -v "^recipes/hosts/galileo/\|^recipes/hosts/marconi/\|^recipes/hosts/davide/"  | xargs --no-run-if-empty git rm --cached'; HEAD
