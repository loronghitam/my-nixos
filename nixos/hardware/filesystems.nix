{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/81a1fc96-95c0-4083-b8e6-607d29aacc8c";
      fsType = "ext4";
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/CE59-9CCF";
      fsType = "vfat";
      options = ["fmask=0022" "dmask=0022"];
    };
    "/home" = {
      device = "/dev/disk/by-uuid/b4be56eb-8cfe-4042-8c72-c046e3596a38";
      fsType = "ext4";
    };
  };
}
