#!/bin/zsh

# load common profile
if [ -f ~/.common/.common_profile ]; then
    source  ~/.common/.common_profile
    emulate sh -c 'source ~/.common/.common_profile'
fi
