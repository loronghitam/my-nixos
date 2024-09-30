{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-gpu-amd
    inputs.hardware.nixosModules.common-pc-ssd
    ./common/aplication
    ./common/audio
    ./common/dekstop
    ./common/global
    ./common/security
    ./common/users
    ./common/virtualization
    ./hardware
  ];

  system.stateVersion = "unstable";
}
