{pkgs, ...}: {
  users = {
    users = {
      xxmuggle = {
        isNormalUser = true;
        extraGroups = ["networkmanager" "wheel" "docker"];
      };
    };
  };
}
