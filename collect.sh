#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
OUTDIR="${DIR}/collection"

mkdir -pv "${OUTDIR}/"

echo -e "Collections folder:\n\t${OUTDIR}"
echo -e "\nEmptying collections folder.."
rm -rf ${OUTDIR}/*

echo -e "\nCollecting all EAGLE libraries.."
find ${DIR} -path "${OUTDIR}" -prune -o -type f -iname "*.lbr" -exec cp -pf {} "${OUTDIR}/" \;

echo -e "\nDone."