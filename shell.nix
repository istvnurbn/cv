# Run this command to build the PDFs:
# > nix-shell --command make

{
  pkgs ? import <nixpkgs> { },
}:
with pkgs;

mkShell {
  buildInputs = [
    texliveFull
  ];
}
