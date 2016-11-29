#!/bin/sh

#E.g.
#filein='/home/student/Documents/image_analyzer/data'
#fileout='/home/student/Documents/image_analyzer/data/converted/T1W.hdr'

fslval=${HOME}'/image_analyzer/fsl/fsl4.1-fslval'
fslstat=${HOME}'/image_analyzer/fsl/fsl4.1-fslstats'

filein="$1"
fileout_temp=$(echo $filein| cut -d'.' -f 1)
fileout=$fileout_temp"_brain.hdr"

$fslstat  $filein  -V







