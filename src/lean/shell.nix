{ mkShell, lean4, elan, ... }:

mkShell {
  name = "leanShell";
  buildInputs = [ lean4 elan ];
  shellHook = "lean -v";
}
