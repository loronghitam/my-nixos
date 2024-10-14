{
  security = {
    sudo = {
      enable = true;
    };
    doas = {
      enable = true;
      extraRules = [
        {
          users = ["muggle"];
          groups = ["wheel"];
          keepEnv = true;
          noPass = true;
        }
      ];
      wheelNeedsPassword = false;
    };
  };
}
