{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs, ... } @ inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system} = rec {
        lean = pkgs.callPackage ./src/lean/shell.nix {};
        cla = pkgs.callPackage ./src/cla/shell.nix {};
        default = cla;
      };
    };
}

