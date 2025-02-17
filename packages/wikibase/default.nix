{ pkgs, ... }:

let 

  mediawiki-src = pkgs.fetchzip {
    url = "https://releases.wikimedia.org/mediawiki/1.42/mediawiki-1.42.5.tar.gz";
    sha256 = "sha256-aimnN1T1i8a22mvaUOtpelblfTdUpNloEotPbwYoRzQ=";
  };

  wikibase-src = pkgs.stdenvNoCC.mkDerivation {
    name = "wikibase-src";
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

  cldr-src = pkgs.fetchFromGitHub {
    owner = "wikimedia";
    repo = "mediawiki-extensions-cldr";
    rev = "98377ac95ca83d895c156e5b5ddcfdca1173a811"; # on REL1_42
    hash = "sha256-GAfgm8BANZ7oY0mFxihFhC+pJV1wFX6LBLjH+hEvbQE=";
  };

  cirrussearch-src = pkgs.fetchFromGitHub {
    owner = "wikimedia";
    repo = "mediawiki-extensions-CirrusSearch";
    # TODO
    rev = "eabd6c0ee6f06304217a0eaa1ddfbf88e4a522c2"; # on REL1_42
    hash = "sha256-qRidTJjnwR7+JzbPDlqAP8dtts/+KkfT84Lxw/V/B7s=";
  };

  elastica-src = pkgs.fetchFromGitHub {
    owner = "wikimedia";
    repo = "mediawiki-extensions-Elastica";
    # TODO
    rev = "78f2f84c29b647a6694e2e48f275557030abfe13"; # on REL1_42
    hash = "sha256-yAy+jLPAn117KciSK4L53r6mDeARQjf6dX65F74GgcE=";
  };

  wikibasecirrussearch-src = pkgs.fetchFromGitHub {
    owner = "wikimedia";
    repo = "mediawiki-extensions-WikibaseCirrusSearch";
    # TODO
    rev = "10d4055cdf4b12df7dc88d968f966711ee4b097d"; # on REL1_42
    hash = "sha256-qRidTJjnwR7+JzbPDlqAP8dtts/+KkfT84Lxw/V/B7s=";
  };

  mediawiki-with-wikibase-src = pkgs.stdenvNoCC.mkDerivation {
    name = "mediawiki-with-wikibase-src";
    src = mediawiki-src;

    installPhase = ''
      cp -r ${cldr-src} extensions/cldr
      cp -r ${elastica-src} extensions/Elastica
      cp -r ${cirrussearch-src} extensions/CirrusSearch
      cp -r ${wikibasecirrussearch-src} extensions/WikibaseCirrusSearch
      cp -r ${wikibase-src} extensions/Wikibase

      # prepare composer run with wikibase extension
      cp composer.local.json-sample composer.local.json
      rm -rf vendor
      cp -v ${./composer.lock} composer.lock

      # mediawiki sript path
      ln -s . w

      mkdir $out
      cp -r * $out
    '';
  };


in
  ((import ./generated-composer2nix/default.nix) { 
      inherit pkgs; noDev = true; }).overrideAttrs {

    name = "wikibase";
    src = mediawiki-with-wikibase-src;
  }
