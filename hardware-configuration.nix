# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "thinkpad_acpi" "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-intel" ];
  # this solves acpi_call not installed issue
  boot.extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/64974e29-d371-4045-93bd-be66df10ddfe";
      fsType = "ext4";
      options = [ "discard" ];
    };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/7cc391ec-53ef-4f66-b36f-3cbaa8be639d";
      fsType = "ext4";
      options = [ "noatime" "nodiratime" "discard" ];
    };

  fileSystems."/boot" =
    #{ device = "/dev/disk/by-uuid/0D32-914A";
    { device = "/dev/disk/by-uuid/4087-F08B";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/f2e011c6-2b1e-45a9-9e05-cea4810d7dee"; }
    ];

  nix.maxJobs = lib.mkDefault 4;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
