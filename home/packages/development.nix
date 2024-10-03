{pkgs, ...}: {
  home.packages = with pkgs; [
    nixd
    alejandra
    nixfmt-rfc-style
    nodePackages.eslint
  ];
}
