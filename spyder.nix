{ pkgs ? import <nixpkgs> {} }:
let
  my-python-packages = p: with p; [
    ipython
    ipykernel
    qdarkstyle
    spyder
  ];
  my-python = pkgs.python3.withPackages my-python-packages;
in 
  mkShell = {
    buildInputs = [
      my-python
    ];
  }
