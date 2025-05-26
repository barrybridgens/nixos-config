# nix "include file" for hyprland

{ config, pkgs, ... }:

{

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar
    wofi
    hyprlock
    hypridle
    hyprshot
    hyprpaper
    swaynotificationcenter
  ];

}

