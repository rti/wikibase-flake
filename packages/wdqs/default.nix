{ pkgs }: pkgs.stdenv.mkDerivation {
  name = "wdqs";

  src = pkgs.fetchzip {
    url = "https://archiva.wikimedia.org/repository/releases/org/wikidata/query/rdf/service/0.3.142/service-0.3.142-dist.tar.gz";
    sha256 = "sha256-DqTLg6DEPUbivxyqWnLerO9qpeVIkhWt9PXO7Dp6SBg=";
  };

  nativeBuildInputs = [ pkgs.jdk pkgs.makeWrapper ];

  installPhase = ''
    mkdir $out
    cp -r $src/* $out

    wrapProgram $out/runBlazegraph.sh \
        --prefix PATH : ${pkgs.lib.makeBinPath [ pkgs.jdk ]} \
        --prefix LOG_CONFIG : ${./logback.xml} \
        --prefix CONFIG_FILE : ${./RWstore.properties}

    # TODO: we use a different old jdk here. is there some cleanup possible
    wrapProgram $out/runUpdate.sh \
        --prefix PATH : ${pkgs.lib.makeBinPath [ pkgs.jdk8 ]} \
        --prefix CONFIG_FILE : ${./RWstore.properties}

  '';

}
