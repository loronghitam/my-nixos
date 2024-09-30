{
  modulesPath,
  lib,
  ...
}: {
  imports = [
    ./boot.nix
    ./filesystems.nix
    ./hardware.nix
    ./networking.nix
    (modulesPath + "/installer/scan/not-detected.nix")
  ];
  swapDevices = [];
  nixpkgs = {
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
}
