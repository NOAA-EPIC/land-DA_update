#!/bin/bash

if [[ $# == 1 ]]; then
  echo "setting jedi path to input $1"
  jedi_path=$1
elif [[ $HOSTNAME == *"Orion"* ]]; then
  jedi_path="/work/noaa/epic-ps/role-epic-ps/contrib/fv3-bundle/build"
elif [[ $HOSTNAME == *"hfe"* ]]; then
  jedi_path="/scratch1/NCEPDEV/nems/role.epic/contrib/fv3-bundle/build"
else
 echo "Cannot determine where to link fv3-jedi test data. Please manually invoke make_links.sh"
fi

ln -fs ${jedi_path}/fv3-jedi/test/Data/fv3files . 
ln -fs ${jedi_path}/fv3-jedi/test/Data/fieldmetadata . 

