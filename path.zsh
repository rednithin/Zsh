me=$(whoami)

my_paths=("/home/$me/.yarn/bin" "/opt/miniconda3/bin/" "usr/local/miniconda3/bin/")

for my_path in $my_paths; do
  if [ -d $my_path ]; then
    path=($my_path $path)
  fi
done

export PATH