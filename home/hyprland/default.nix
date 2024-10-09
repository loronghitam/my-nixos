{
  pkgs,
  lib,
  inputs,
  ...
}: let
  hyprland = inputs.hyprland.packages.${pkgs.system}.hyprland;
  plugins = inputs.hyprland-plugins.packages.${pkgs.system};

  launcher = pkgs.writeShellScriptBin "hypr" ''
    #!/${pkgs.bash}/bin/bash

    export WLR_NO_HARDWARE_CURSORS=1
    export _JAVA_AWT_WM_NONREPARENTING=1

    exec ${hyprland}/bin/Hyprland
  '';
in {
  imports = [
    #    ./waybar.nix
    ./rofi.nix
  ];
  home.packages = with pkgs; [
    swww
    rofi-power-menu
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    package = hyprland;
    systemd.enable = true;
    xwayland.enable = true;
    settings = {
      "$mod" = "SUPER";
      bind =
        [
          "$mod, F, exec, alacritty"
          "$mod, I, exec, idea-ultimate"
          "$mod, C, exec, librewolf"
          "$mod, D, exec, rofi -show drun"
          "$mod, Q, killactive"
        ]
        ++ (
          # workspaces
          # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
          builtins.concatLists (builtins.genList (
              i: let
                ws = i + 1;
              in [
                "$mod, code:1${toString i}, workspace, ${toString ws}"
                "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
              ]
            )
            9)
        );
      monitor = [
        "eDP-1, 1440x900@60h, auto, 1"
        #        "eDP-2, 1440x900@60h, auto, 1" # Untuk display layar kedua
      ];

      misc = {
        layers_hog_keyboard_focus = false;
        disable_splash_rendering = true;
        force_default_wallpaper = 0;
      };

      input = {
        kb_layout = "hu";
        kb_model = "pc104";
        follow_mouse = 1;
        touchpad = {
          natural_scroll = "yes";
          disable_while_typing = true;
          drag_lock = true;
        };
        sensitivity = 0;
        float_switch_override_focus = 2;
      };
      exec = [
        "pkill waybar & sleep 0.5 && waybar"
      ];
      windowrule = [
        "float,^(alacritty)$"
      ];
    };
  };

  home = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
  };
}
