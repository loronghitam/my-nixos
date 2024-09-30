{pkgs, ...}: {
  boot = {
    initrd = {
      availableKernelModules = ["nvme" "xhci_pci" "usb_storage" "sd_mod"];
      kernelModules = [];
    };
    kernelPackages = pkgs.linuxPackages_5_15;
    kernelModules = ["kvm-amd" "rtw89"];
    extraModulePackages = [pkgs.linuxKernel.packages.linux_5_15.rtw89];
    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "max";
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}
