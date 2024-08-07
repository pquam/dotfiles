{ config, pkgs, ... }:

	with import <nixpkgs> {};

	let
  	  androidComposition = androidenv.composeAndroidPackages {
  	  cmdLineToolsVersion = "8.0";
  	  toolsVersion = "26.1.1";
  	  platformToolsVersion = "30.0.5";
  	  buildToolsVersions = [ "30.0.3" ];
  	  includeEmulator = true;
  	  emulatorVersion = "30.3.4";
  	  platformVersions = [ "28" "29" "30" ];
  	  includeSources = false;
  	  includeSystemImages = false;
  	  systemImageTypes = [ "google_apis_playstore" ];
  	  abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
  	  cmakeVersions = [ "3.10.2" ];
  	  includeNDK = true;
  	  ndkVersions = ["22.0.7026061"];
  	  useGoogleAPIs = false;
  	  useGoogleTVAddOns = false;
  	  includeExtras = [
  	    "extras;google;gcm"
  	  ];
  	};
	in
	androidComposition.androidsdk

{

	environment.systemPackages = with pkgs; [
		flutter
		qemu_full
		android-tools
		clang_18
		cmake
		ninja
		pkg-config-unwrapped
	];

}
