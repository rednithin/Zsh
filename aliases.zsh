#!/bin/zsh
alias -g reload='exec /bin/zsh -l'
alias -g zr='zgen reset && reload'
alias -g exr='exercism submit src/lib.rs'
alias -g qg="nix-env -qaP --arg config '{ allowUnfree = true; }' | grep -i"
alias -g osce="SUDO_EDITOR=kate sudoedit /etc/nixos/configuration.nix"
alias -g oshe="SUDO_EDITOR=kate sudoedit /etc/nixos/hardware-configuration.nix"
alias -g he="kate .config/nixpkgs/home.nix &"
alias -g ce="kate .config/nixpkgs/config.nix &"