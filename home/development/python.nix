{pkgs, ...}: {
  home.packages = with pkgs; [
    ghostscript
    (python312.withPackages (ps:
      with ps; [
        (camelot.overrideAttrs (oldAttrs: {
          propagatedBuildInputs = oldAttrs.propagatedBuildInputs ++ [ghostscript];
          postInstall = ''
            wrapProgram $out/bin/camelot \
              --set LD_LIBRARY_PATH "${pkgs.ghostscript}/lib:$LD_LIBRARY_PATH"
          '';
        }))
        #        camelot
        pip
        jedi
        gdown
        pypdf2 # Tambahkan PyPDF2 untuk skrip kamu
        gaphas
        pandas
        requests
        openpyxl
        tqdm
        tkinter
      ]))
  ];
}
