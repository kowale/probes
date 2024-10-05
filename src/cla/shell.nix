{ mkShell, python311, ... }:

let
  python = python311.withPackages (p: with p; [
    torch
    numpy
    pytest
    ipython
    matplotlib
  ]);
in
mkShell {
  name = "claShell";
  buildInputs = [ python ];
  shellHook = "python -c 'import torch'";
}

