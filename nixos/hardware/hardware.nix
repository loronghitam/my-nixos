{
  lib,
  config,
  ...
}: {
  hardware = {
    enableAllFirmware = true;
    cpu = {
      amd = {
        updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
      };
    };
  };
}
