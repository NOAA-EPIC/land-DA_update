#!/bin/bash

if [[ $# == 1 ]]; then
  echo "setting jedi path to input $1"
  jedi_path=$1
elif [[ $HOSTNAME == *"Orion"* ]]; then
  jedi_path="/work/noaa/epic-ps/role-epic-ps/contrib/ioda-bundle"
elif [[ $HOSTNAME == *"hfe"* ]]; then
  jedi_path="/scratch1/NCEPDEV/nems/role.epic/contrib/ioda-bundle"
else
 echo "Cannot determine where to link IODA converter script. Please manually invoke make_links.sh"
fi

ln -s ${jedi_path}/iodaconv/src/land/imsfv3_scf2ioda.py .

