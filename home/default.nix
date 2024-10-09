{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: let
  flakeInputs = lib.filterAttrs (_: lib.isType "flake") inputs;
in {
  imports = [
    ./applications
    ./desktop
    ./development
    ./packages
    ./shell
    #    ./hyprland
  ];

  nix = {
    package = lib.mkDefault pkgs.nix;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = ["root" "xxmuggle"];
    };
  };

  home = {
    username = "xxmuggle";
    homeDirectory = "/home/xxmuggle";
    sessionVariables = {
      NIX_PATH = lib.concatStringsSep ":" (lib.mapAttrsToList (n: _: "${n}=flake:${n}") flakeInputs);
      CAMELOT_GS_PATH = "${pkgs.ghostscript}/bin/gs";
      LD_LIBRARY_PATH = "${pkgs.ghostscript}/lib:$LD_LIBRARY_PATH";
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.11";
}
