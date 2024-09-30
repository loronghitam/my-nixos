{pkgs, ...}: {
  home.packages = with pkgs; [
    ghostscript
    (python3.withPackages (ps:
      with ps; [
        camelot
        pip
        jedi
        gdown
        pypdf2 # Tambahkan PyPDF2 untuk skrip kamu
        gaphas
        pandas
        requests
        openpyxl
        tqdm
      ]))
  ];
}
