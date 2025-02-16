{ pkgs, ... }:

let 

  mediawiki-src = pkgs.fetchzip {
    url = "https://releases.wikimedia.org/mediawiki/1.42/mediawiki-1.42.5.tar.gz";
    sha256 = "sha256-aimnN1T1i8a22mvaUOtpelblfTdUpNloEotPbwYoRzQ=";
  };

  wikibase-src = pkgs.stdenvNoCC.mkDerivation {
    name = "wikibase";
    src = pkgs.fetchFromGitHub {
      owner = "wikimedia";
      repo = "mediawiki-extensions-Wikibase";
      rev = "cab6c27999c251da4f279235dc9f70944375bf46"; # on REL1_42
      hash = "sha256-1WFrmPbjHa6qAQ9iIO35WF94WBD1lrs/tVZLyq3RNNM=";
    };

    # TODO: should this go into a fixup or patch phase? how is it called?
    installPhase = ''
      # remove broken symlink
      rm repo/tests/browser

      mkdir $out
      cp -r * $out
    '';
  };

  mediawiki-with-wikibase = pkgs.stdenvNoCC.mkDerivation {
    name = "wikibase";
    src = mediawiki-src;

    nativeBuildInputs = [wikibase-src mediawiki-src];

    installPhase = ''
      cp -r ${wikibase-src} extensions/Wikibase

      # prepare new composer run with wikibase extension
      rm -rf vendor
      cp composer.local.json-sample composer.local.json

      find . -name composer.lock | xargs rm -f
      # rm -f composer.lock
      # cp ${./composer.lock} .

      mkdir $out
      cp -r * $out

      find $out -name composer.lock 
      exit
    '';
  };


in
  ((import ./generated-composer2nix/default.nix) { inherit pkgs; noDev = true; }).overrideAttrs {
    src = mediawiki-with-wikibase;

    nativeBuildInputs = [ mediawiki-with-wikibase wikibase-src mediawiki-src ];
  }
