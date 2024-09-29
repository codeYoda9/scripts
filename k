#!/bin/bash

processId=$(ps -ef | grep pytest | grep -v 'grep' | awk '{ printf $2 }')
echo -e $processId
