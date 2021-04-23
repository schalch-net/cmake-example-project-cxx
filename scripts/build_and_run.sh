#!/bin/bash

APP_PATH="build/app/sampleapp"

DIR_SCRIPTS=`dirname $0`
DIR_BASE=$DIR_SCRIPTS/..

# first, build the app
$DIR_SCRIPTS/build.sh

# then, run it
cd $DIR_BASE
./$APP_PATH