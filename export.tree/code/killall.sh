#!/bin/bash
#
# if setup went wrong, delete everything

[[ "$(read -e -p 'Are you sure you want to delete everything? [yes_sure!/NO]> '; echo $REPLY)" == yes_sure! ]] && echo KILLALLNOW || exit

# delete wrong input & output RIA stores + aliases
rm -rf /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/02a/42ed0-b57d-4113-a921-2ff57a5bd248
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/inputstore/alias/ds004996-mriqc
rm -rf https://hub.trr379.de/f.hoffstaedter/ds004996-mriqc
rm -f /p/project1/icei-hbp-00000000004/ria-qcworkflow/alias/ds004996-mriqc

# remove faulty dataset 
cd ..
datalad drop --what datasets --reckless kill -r -d ds004996-mriqc
