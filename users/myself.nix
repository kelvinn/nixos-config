{ ... }:
let
  username = "squirmy";
  home = "/Users/${username}";
in
{
  inherit username home;
}
