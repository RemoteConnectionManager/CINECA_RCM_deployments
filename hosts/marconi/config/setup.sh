#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symli
nk
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symli
nk, we need to resolve it relative to the path where the symlink file was locate
d
done
export RCM_DEPLOY_HOSTPATH="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
source ${RCM_DEPLOY_HOSTPATH}/../../../../get_root


python ${RCM_DEPLOY_ROOTPATH}/scripts/config.py -c config config/shared_install config/rcm config/rcm/server/headless  --platformconfig --dest deploy/insitu/04/spack
source ${RCM_DEPLOY_ROOTPATH}/deploy/insitu/04/spack/share/spack/setup-env.sh

