Enter the directory of the package you want to build and run the following command:
nix-build -E 'with import <nixpkgs> {}; callPackage ./default.nix {}'
