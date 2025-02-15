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
    perSystem = { self', pkgs, config, lib, ... }: {
      process-compose."default" = { config, ... }: {
        imports = [ inputs.services-flake.processComposeModules.default ];
        services.mysql."mysql1" = {
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
      };
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          mariadb-client
        ];
      };
      packages = rec {
        wikibase = (import ./packages/wikibase) { inherit pkgs; };
        default = wikibase;
      };
    };
  };
}
