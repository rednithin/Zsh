#!/bin/zsh
my_files=("/opt/miniconda3/etc/profile.d/conda.sh" "/usr/local/miniconda3/etc/profile.d/conda.sh")

for my_file in $my_files; do
  if [ -f $my_file ]; then
    source $my_file
  fi
done