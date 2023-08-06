{ self, config, ... }:

{
  flake = {
    darwinModules = { # FIX: Change darwinModules to xxx
      my-home = {
        home-manager.users.${config.myself.username} = { pkgs, ... }: {
          imports = [
            self.homeModules.default
          ];
        };
      };

      default.imports = [
        self.darwinModules.home-manager
        self.darwinModules.my-home # FIX: Change darwinModules to xxx
        {
          # Set the user's name & home directory. This should be
          # in sync with home manager. (home/default.nix)
          users.users.${config.myself.username} = {
            name = config.myself.username;
            home = config.myself.home;
          };
        }
      ];
    };
  };
}