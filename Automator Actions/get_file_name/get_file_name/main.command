#!/usr/bin/env bash

#  main.command
#  get_file_name

#  Created by kirabin on 25.1.2021.

name=`basename "$1"`
echo ${name%.*}
