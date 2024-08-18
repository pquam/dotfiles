{ config, lib, pkgs, ... }:

{
    #intel config

	hardware.opengl.extraPackages = with pkgs; [
	intel-media-sdk
	intel-media-driver
#	vulkan-intel
	];

	#:hardware.opengl.vulkanSupport = true
}
