{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
    process-compose-flake.url = "github:Platonic-Systems/process-compose-flake";
    services-flake.url = "github:juspay/services-flake";
  };
  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = import inputs.systems;
    imports = [ inputs.process-compose-flake.flakeModule ];
    perSystem = { self', pkgs, config, lib, ... }:
    let
      wikibase = (import ./packages/wikibase) { inherit pkgs; };
      wdqs = (import ./packages/wdqs) { inherit pkgs; };
      elasticsearch = (import ./packages/elasticsearch) { inherit pkgs; };

    in
    {
      process-compose."default" = { config, ... }: {
        imports = [ inputs.services-flake.processComposeModules.default ];

        services.mysql."mysql" = {
          enable = true;
          # settings.mysqld.port = 3307;
          initialDatabases = [{
            name = "my_wiki";
          }];
          ensureUsers = [{
            name = "wiki";
            password = "wiki";
            ensurePermissions = {
                "my_wiki.*" = "ALL PRIVILEGES";
            };
          }];
        };

        settings.processes.php = {
          command = pkgs.writeShellApplication {
            name = "php";
            runtimeInputs = [ pkgs.php82 ];
            text = ''
              DATADIR="''${PWD}/data/php"
              mkdir -p "$DATADIR"

              php ${wikibase}/maintenance/install.php \
                --server "http://localhost:8081" \
                --pass WUugDspNbEkfW6C9 \
                --dbserver 127.0.0.1 \
                --dbuser wiki \
                --dbpass wiki \
                --confpath "$DATADIR" \
                --scriptpath "/w" \
                --extensions "AbuseFilter,CategoryTree,Cite,CiteThisPage,CodeEditor,ConfirmEdit,DiscussionTools,Echo,Gadgets,ImageMap,InputBox,Interwiki,Linter,LoginNotify,Math,MultimediaViewer,Nuke,OATHAuth,PageImages,ParserFunctions,PdfHandler,Poem,ReplaceText,Scribunto,SecureLinkFixer,SpamBlacklist,SyntaxHighlight_GeSHi,TemplateData,TextExtracts,Thanks,TitleBlacklist,VisualEditor,WikiEditor,cldr" \
                my_wiki admin

                cat <<EOF >> "$DATADIR"/LocalSettings.php
# Wikibase Repository
wfLoadExtension( 'WikibaseRepository', "\$IP/extensions/Wikibase/extension-repo.json" );
require_once "\$IP/extensions/Wikibase/repo/ExampleSettings.php";

# Wikibase Client
wfLoadExtension( 'WikibaseClient', "\$IP/extensions/Wikibase/extension-client.json" );
require_once "\$IP/extensions/Wikibase/client/ExampleSettings.php";

# use jobs on request, we not have a job runner
\$wgJobRunRate = 1;


// https://www.mediawiki.org/wiki/Extension:WikibaseCirrusSearch
wfLoadExtension( 'WikibaseCirrusSearch' );

\$wgCirrusSearchServers = [ "127.0.0.1" ];
\$wgSearchType = 'CirrusSearch';
\$wgCirrusSearchExtraIndexSettings['index.mapping.total_fields.limit'] = 5000;
\$wgWBCSUseCirrus = true;

wfLoadExtension( 'CirrusSearch' );
wfLoadExtension( 'Elastica' );

EOF

              php ${wikibase}/maintenance/run.php update.php \
                --quick \
                --conf "$DATADIR"/LocalSettings.php

              php ${wikibase}/maintenance/run.php CirrusSearch:UpdateSearchIndexConfig.php \
                --conf "$DATADIR"/LocalSettings.php
              php ${wikibase}/maintenance/run.php CirrusSearch:ForceSearchIndex.php --skipParse \
                --conf "$DATADIR"/LocalSettings.php
              php ${wikibase}/maintenance/run.php CirrusSearch:ForceSearchIndex.php --skipLinks --indexOnSkip \
                --conf "$DATADIR"/LocalSettings.php

              MW_CONFIG_FILE="''${DATADIR}/LocalSettings.php" \
                php -S 127.0.0.1:8081 -t ${wikibase}
            '';
          };
          depends_on."mysql".condition = "process_healthy";
          depends_on."elasticsearch".condition = "process_healthy";

          readiness_probe = {
            exec.command = "${pkgs.curl}/bin/curl -f -k http://127.0.0.1:8081";
            initial_delay_seconds = 45;
            period_seconds = 10;
            timeout_seconds = 2;
            success_threshold = 1;
            failure_threshold = 5;
          };
        };

        settings.processes.wdqs = {
          command = pkgs.writeShellApplication {
            name = "wdqs";
            text = ''
              DATADIR="''${PWD}/data/wdqs"
              mkdir -p "$DATADIR"/log

              EXTRA_JVM_OPTS=-Dcom.bigdata.journal.AbstractJournal.file="''${DATADIR}/data.jnl" \
                LOG_DIR="''${DATADIR}/log" ${wdqs}/runBlazegraph.sh
            '';
          };

          readiness_probe = {
            exec.command = "${pkgs.curl}/bin/curl -f -k http://127.0.0.1:9999/bigdata/namespace/wdq/sparql";
            initial_delay_seconds = 15;
            period_seconds = 10;
            timeout_seconds = 2;
            success_threshold = 1;
            failure_threshold = 5;
          };
        };

        settings.processes.wdqs-updater = {
          command = pkgs.writeShellApplication {
            name = "wdqs-updater";
            runtimeInputs = [];
            text = ''
              ${wdqs}/runUpdate.sh -h http://localhost:9999 -- \
                --wikibaseUrl "http://localhost:8081" \
                --conceptUri "http://localhost" \
                --entityNamespaces "120,122"
            '';
          };

          depends_on."php".condition = "process_healthy";
          depends_on."wdqs".condition = "process_healthy";
        };

        services.elasticsearch."elasticsearch" = {
          enable = true;
          package = elasticsearch;
          plugins = [
            # pkgs.elasticsearchPlugins.analysis-icu
          ];
        };
      };

      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          mariadb-client
        ];
      };

      packages = {
        inherit wikibase;
        inherit wdqs;
        inherit elasticsearch;
      };
    };
  };
}
