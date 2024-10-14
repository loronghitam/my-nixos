{ inputs
, pkgs
, ...
}: {
  imports = [
    inputs.hardware.nixosModules.common-cpu-amd
    inputs.hardware.nixosModules.common-cpu-amd-pstate
    inputs.hardware.nixosModules.common-gpu-amd
    inputs.hardware.nixosModules.common-pc-laptop
    inputs.hardware.nixosModules.common-pc-laptop-acpi_call
    inputs.hardware.nixosModules.common-pc-laptop-ssd
    ./common/aplication
    ./common/audio
    ./common/dekstop
    ./common/global
    ./common/security
    ./common/users
    ./common/virtualization
    ./hardware
  ];

#  powerManagement.enable = true;

  environment.systemPackages = with pkgs; [
    git
    home-manager
  ];



  system.stateVersion = "unstable";
}
