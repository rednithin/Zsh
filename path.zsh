#!/bin/zsh
me=$(whoami)

my_paths=("/home/$me/.yarn/bin" "/opt/miniconda3/bin/" "usr/local/miniconda3/bin/" "/home/$me/miniconda3/bin" "/home/$me/.cargo/bin")

for my_path in $my_paths; do
  if [ -d $my_path ]; then
    path=($my_path $path)
  fi
done

export PATH
