{lib, ...}: {
  # TODO : memisahkan antara networmanager dan wireless
  networking = {
    hostName = "nixos";
    useDHCP = lib.mkDefault true;
    networkmanager = {
      enable = true;
      settings = {
        device = {
          match-device = "driver:iwlwifi";
        };
      };
      wifi = {
        scanRandMacAddress = false;
      };
    };
    wireless = {
      enable = false;
      iwd = {
        enable = true;
        settings = {
          IPv6 = {
            Enabled = true;
          };
          Settings = {
            AutoConnect = true;
          };
        };
      };
    };
  };
}
