{pkgs, ...}: {
  home.packages = with pkgs; [
    rar
    rm-improved
    eza
    ripgrep
    fd
    httpie
    libsForQt5.krohnkite
  ];
}
