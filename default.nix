let
pkgs = import <nixpkgs> {};
in with pkgs;
  [
    SDL
    gnupg
#    jdk
  ]
