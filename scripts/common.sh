#!/bin/bash

bld=$'\e[1m'
rst=$'\e[0m'
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done

function center() # light blue
{
    echo
    echo "${f6}==================== $* ===================="
    echo
}

function code() # blue
{
    echo -e "${f4}${bld}$*${rst}"
}

function warn() # yellow
{
    echo -e "${f3}${bld}$*${rst}"
}

function error() # red
{
    echo -e "${f1}${bld}$*${rst}"
}

function important() # green
{
    echo -e "${f2}${bld}$*${rst}"
}

function ensure() # runs command and validates return code
{
    "$@"
    if [ $? -ne 0 ]; then
        error "A failure occured. Exiting script..."
        exit 1
    fi
}

function begin_section()
{
    local section_name="{$1}"
    shift 1
    echo
    echo -e "\e[OKsection_start:$(date +%s):${section_name}[collapsed=true]\r\e[OK${f6}==================== $* ===================="
    echo
}

function end_section()
{
    local section_name="{$1}"
    echo -e "\e[OKsection_end:$(date +%s):${section_name}\r\e[OK"
    echo
}

function inject_auth_tokens()
{
    search="https://gitlab.usaa.com"
    replace="https://\${CI_JOB_USER}:\${CI_JOB_TOKEN}@gitlab.usaa.com"
    sed -i "s|${search}${replace}|g" "$@"
}

# receives a list of arguments, prints the arguments
function print_args()
{
    for var in "$@"
        do
            echo "${!name*}"
            echo "$var"
        done
}