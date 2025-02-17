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

    # makeWrapper ${pkgs.jre}/bin/java $out/bin/foo \
    #       --add-flags "-cp $out/share/java/foo.jar org.foo.Main"
    wrapProgram $out/runBlazegraph.sh \
        --prefix PATH : ${pkgs.lib.makeBinPath [ pkgs.jdk ]} \
        --prefix LOG_CONFIG : ${./logback.xml} \
        --prefix CONFIG_FILE : ${./RWStore.properties}
  '';

        # --chdir /home/rti/tmp/wdqs-today/ \
        # --prefix DIR : /home/rti/tmp/wdqs-today/ \

}
