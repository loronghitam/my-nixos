{
  security = {
    sudo = {
      enable = true;
    };
    doas = {
      enable = true;
      extraRules = [
        {
          users = ["xxmuggle"];
          keepEnv = true;
          noPass = true;
        }
      ];
      wheelNeedsPassword = false;
    };
  };
  #  security.sudo.enable = false;
  #  security.doas.extraRules = [
  #    {
  #      users = ["xxmuggle"];
  #      # Optional, retains environment variables while running commands
  #      # e.g. retains your NIX_PATH when applying your config
  #      keepEnv = true;
  #      persist = true; # Optional, only require password verification a single time
  #    }
  #  ];
}
