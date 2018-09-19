{ nixpkgsFn ? import <nixpkgs> }:

let
  nixpkgs = nixpkgsFn {
    config = {
      allowUnfree = true;
    };
    overlays = [(import ./overlay.nix)];
  };
in
  with nixpkgs;
  stdenv.mkDerivation rec {
    name = "pyplay";
    env = buildEnv { name = name; paths = buildInputs; };
    buildInputs = with python3Packages; [
      python3
      matplotlib
      numpy
    ];
  }
