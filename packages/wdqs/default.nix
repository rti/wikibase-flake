{ pkgs }: pkgs.stdenv.mkDerivation {
  name = "wdqs";

  src = pkgs.fetchzip {
    url = "https://archiva.wikimedia.org/repository/releases/org/wikidata/query/rdf/service/0.3.142/service-0.3.142-dist.tar.gz";
    sha256 = "sha256-DqTLg6DEPUbivxyqWnLerO9qpeVIkhWt9PXO7Dp6SBg=";
  };

  installPhase = ''
    mkdir $out
    cp -r $src/* $out
  '';

}
