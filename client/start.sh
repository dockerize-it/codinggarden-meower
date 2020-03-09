#!/usr/bin/env bash

SCRIPTNAME="$(basename $0)"
SCRIPTDIR="$(dirname "${BASH_SOURCE[0]}")"
USER="${SUDO_USER:-${USER}}"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# @Author      : Jason
# @Contact     : casjaysdev@casjay.com
# @File        : start
# @Created     : 09/03/2020
# @License     : WTFPL
# @Copyright   : Copyright (c) CasjaysDev
# @Description :
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Main progam

cd "$SCRIPTDIR"
echo "entering $PWD and running npm install -y ; npm run start " >> ../app.log 2>&1
npm install -y >> ../app.log 2>&1
npm run start >> ../app.log 2>&1

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
if [ ! -z "$EXIT" ]; then exit "$EXIT"; fi

# end


#/* vi: set ts=2 sw=2 noai ft=sh syntax=sh expandtab :



