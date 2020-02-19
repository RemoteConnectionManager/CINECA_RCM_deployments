# Here we collect recipes for RCM deploy on CINECA clusters

download:

    git clone --recursive  --branch master https://github.com/RemoteConnectionManager/CINECA_RCM_deployments.git
    cd CINECA_RCM_deployments

If plan to develop, align all submodules to their branches specified in .gitsubmodules

    git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'

update the repo and submodules from origin:
    git pull
    git submodule update --recursive

* [Other hints on git operations](GIT_HINTS.md)

