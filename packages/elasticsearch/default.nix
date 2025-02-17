{ pkgs }:

# adapted from nixpkgs:pkgs/servers/search/elasticsearch/7.x.nix

pkgs.stdenv.mkDerivation {
  pname = "elasticsearch";
  version = "7.10.2";

  src = pkgs.fetchurl {
    url = "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.10.2-linux-x86_64.tar.gz";
    hash = "sha256-O3rjtvXyJI+kRBqiz2U2OMkCIQj4E+AIHaE8N4o14R4=";
  };

  patches = [ ./es-home-6.x.patch ];

  postPatch = ''
    substituteInPlace bin/elasticsearch-env --replace \
      "ES_CLASSPATH=\"\$ES_HOME/lib/*\"" \
      "ES_CLASSPATH=\"$out/lib/*\""

    substituteInPlace bin/elasticsearch-cli --replace \
      "ES_CLASSPATH=\"\$ES_CLASSPATH:\$ES_HOME/\$additional_classpath_directory/*\"" \
      "ES_CLASSPATH=\"\$ES_CLASSPATH:$out/\$additional_classpath_directory/*\""
  '';

  nativeBuildInputs = [
    pkgs.makeWrapper
  ] ++ pkgs.lib.optional (!pkgs.stdenv.hostPlatform.isDarwin) pkgs.autoPatchelfHook;

  buildInputs = [
    pkgs.jdk17
    pkgs.util-linux
    pkgs.zlib
  ];

  runtimeDependencies = [ pkgs.zlib ];

  installPhase = ''
    mkdir -p $out
    cp -R bin config lib modules plugins $out

    chmod +x $out/bin/*

    substituteInPlace $out/bin/elasticsearch \
      --replace 'bin/elasticsearch-keystore' "$out/bin/elasticsearch-keystore"

    wrapProgram $out/bin/elasticsearch \
      --prefix PATH : "${
        pkgs.lib.makeBinPath [
          pkgs.util-linux
          pkgs.coreutils
          pkgs.gnugrep
        ]
      }" \
      --set JAVA_HOME "${pkgs.jdk17}"

    wrapProgram $out/bin/elasticsearch-plugin --set JAVA_HOME "${pkgs.jdk17}"
  '';
}
