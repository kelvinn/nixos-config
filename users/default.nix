{ lib, ... }:
let
  userSubmodule = lib.types.submodule {
    options = {
      username = lib.mkOption {
        type = lib.types.str;
      };
      home = lib.mkOption {
        type = lib.types.str;
      };
    };
  };
in
{
  options = {
    myself = lib.mkOption {
      type = userSubmodule;
    };
  };
  config = {
    myself = import ./myself.nix;
  };
}