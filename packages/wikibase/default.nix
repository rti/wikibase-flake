{ pkgs }:

pkgs.stdenvNoCC.mkDerivation {
  name = "test";
  src = ./.;
}
