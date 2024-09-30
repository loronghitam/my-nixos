{ pkgs, ... }: {

  fonts.packages = with pkgs; [
    corefonts
    vistafonts
    liberation_ttf
    (nerdfonts.override { fonts = [ "FiraCode" "JetBrainsMono" ]; })
  ];
  fonts.fontDir.enable = true;
}
