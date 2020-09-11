#!/bin/bash

if [ ! -d "themes" ];then
  echo "No themes directory, create it"
  mkdir themes
fi

if [ -d "themes/hugo-material-docs" ];then
  echo 'Find directoy "themes/hugo-material-docs", update by "git pull"'
  pushd themes/hugo-material-docs
  git pull
  popd
else
  echo 'Directoy "themes/hugo-material-docs" not found, do "git clone"'
  #git clone https://github.com/skyao/hugo-material-docs.git themes/hugo-material-docs
  #git clone git@github.com:skyao/hugo-material-docs.git themes/hugo-material-docs
  git clone https://github.com/speedoops/hugo-material-docs.git themes/hugo-material-docs
  #cd themes
  #ln -s ../../hugo-material-docs .
fi



