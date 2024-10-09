{
  security = {
    sudo = {
      enable = false;
    };
    doas = {
      enable = true;
      extraRules = [
        {
          users = ["xxmuggle"];
          groups = ["wheel"];
          keepEnv = false;
          noPass = true;
        }
      ];
      wheelNeedsPassword = false;
    };
  };
}
