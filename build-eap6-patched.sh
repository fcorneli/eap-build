#!/bin/bash

source src/functions-common.sh

check_commands wget unzip

make_directory -f work

if [ ! -f download/HornetQ_2_3_25_SP31.zip ]
then
    echo "Trying to download HornetQ_2_3_25_SP31.zip"
    wget --timeout=30 --tries=2 --directory-prefix=download https://github.com/hornetq/hornetq/archive/HornetQ_2_3_25_SP31.zip
else
    echo "File HornetQ_2_3_25_SP31.zip already here. No need to download it again."
fi

unzip -q -d work download/HornetQ_2_3_25_SP31.zip

cd work/hornetq-HornetQ_2_3_25_SP31/
mvn clean install
cd ../..

./build-eap6.sh
