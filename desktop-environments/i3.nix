{ config, pkgs, callPackages, ...}: {
  services.xserver = {
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };
  };
  environment.systemPackages = with pkgs;
  [
    picom
  ];
}
