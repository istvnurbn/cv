# Classic nix-shell entry point (no flakes required):
# > nix-shell --command make
#
# If you have flakes enabled, `nix develop` (see flake.nix) works the same way.

{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.texliveFull
  ];
}
