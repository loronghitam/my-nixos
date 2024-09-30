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
# helix, librewolf, chromium, zellij

