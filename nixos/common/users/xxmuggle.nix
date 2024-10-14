{pkgs, ...}: {
  users = {
    users = {
      muggle = {
        isNormalUser = true;
        extraGroups = ["networkmanager" "wheel" "docker"];
      };
    };
  };
}
