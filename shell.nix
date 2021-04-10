{pkgs ? import (import ./nix/sources.nix).nixpkgs {}}:

pkgs.stdenv.mkDerivation {
  name = "dhall-playground-devenv";

  buildInputs = [
    pkgs.dhall
    pkgs.gnumake
  ];
}
