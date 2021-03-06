#! /bin/bash

pharovm=vm.sh
pharoimage=Pharo.image

function usage() {
    echo "Use:" $0 chapter.pier
}

if [[ -z $1 ]]; then
    usage
    exit 1
fi

pier_file="$1"

echo
echo "Please wait while processing your input..."
echo

rm -f textlint.log
echo "PRConsole generateLaTeXFromPier: '${pier_file}'. WorldState addDeferredUIMessage: [ SmalltalkImage current snapshot: true andQuit: true ]." | ./vm.sh "${pharoimage}" eval
