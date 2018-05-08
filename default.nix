let
pkgs = import <nixpkgs> {};
in with pkgs;
  [
    pkgs.SDL
    pkgs.gnupg
    jdk
  ]
