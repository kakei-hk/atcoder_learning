#!/bin/bash

support_language=("python" "cpp")

function usage ()
{
    echo "usage:"
    echo "    ./set_template.sh <language>"
    echo "ex:"
    echo "    ./set_template.sh python"
}

function check_language ()
{
    for lang in ${support_language[@]}; do
        if [ ${1} = ${lang} ]; then
            return 0
        fi
    done
    return 1
}

if [ $# -gt 1 ]; then
    usage
    exit 1
fi

language=${1:-"python"}
if check_language ${language}; then
    echo "set template...    language: ${language}"
else
    echo "language: ${language} is not supported"
    exit 1
fi

echo "copy ${language} template files ..."
config_dir="${HOME}/.config/atcoder-cli-nodejs/${language}"
if [ ! -d ${config_dir} ]; then
    mkdir ${config_dir}
fi
cp template/${language}/* ${config_dir}

echo "set defaul-template (acc global config) ..."
acc config default-template ${language}
acc config
acc templates
