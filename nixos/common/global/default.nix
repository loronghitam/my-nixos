# This file (and the global directory) holds config that i use on all hosts
{inputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./locale.nix
    ./nix.nix
    ./fonts.nix
  ];

  home-manager = {
    useGlobalPkgs = true;
    extraSpecialArgs = {};
  };
  #  home-manager.extraSpecialArgs = {};

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
