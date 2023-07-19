#!/bin/sh
URL="${1}"
D1="$(basename -- "$(dirname -- "${URL}")")"
D2="$(basename -- "${URL}" | sed 's@\.git$@@g')"
DIR_PREFIX="${HOME}/GITHUB/${D1}/"
DIR_FINAL="${DIR_PREFIX}/${D2}"
mkdir -pv -- "${DIR_PREFIX}"
cd "${DIR_PREFIX}"
git clone "${URL}"
cd "${DIR_FINAL}"
git pull
