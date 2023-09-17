#!/bin/bash
PWD=$(pwd)
img=replicability-training-presentation
dockerspace=larsvilhuber

case $USER in
  vilhuber|larsvilhuber)
  #WORKSPACE=$HOME/Workspace/git
  WORKSPACE=$PWD
  ;;
  codespace)
  WORKSPACE=/workspaces
  ;;
esac
  
# build the docker if necessary

BUILD=no
arg1=$1

docker pull $dockerspace/$img 
if [[ $? == 1 ]]
then
  ## maybe it's local only
  docker image inspect $dockerspace/$img 
fi

docker run -e  DISABLE_AUTH=true  -v $WORKSPACE:/home/rstudio --rm -p 8787:8787 $dockerspace/$img
