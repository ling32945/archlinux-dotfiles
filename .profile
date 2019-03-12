#!/bin/sh

# Profile file. Runs on login.

# load common profile
if [ -f ~/.common/.common_profile ]; then
    source  ~/.common/.common_profile
    emulate zsh -c 'source ~/.common/.common_profile'
fi

# load bashrc
[ -f ~/.bashrc ] && source ~/.bashrc

