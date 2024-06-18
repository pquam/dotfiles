{ config, lib, pkgs, ... }:

{
  ###nvidia config

  hardware.nvidia.package = config.boot.kernalPackages.nvidiaPackages.production;
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
  }
}
