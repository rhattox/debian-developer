#!/usr/bin/env bash

echo "###########################"
echo "###########################"
echo "#### INSTALL NERDFONTS ####"
echo "###########################"
echo "###########################"

TMP_PATH="${TMP_PATH}/nerdfonts"

mkdir -p ${TMP_PATH}

wget ${FONT_URL} --output-document=${TMP_PATH}/fonts.zip

unzip ${TMP_PATH}/fonts.zip -d ${TMP_PATH}/font

sudo mkdir -p ${SYSTEM_FONT_LOCATION}

sudo cp -a ${TMP_PATH}/font/* ${SYSTEM_FONT_LOCATION}

fc-cache -fv
