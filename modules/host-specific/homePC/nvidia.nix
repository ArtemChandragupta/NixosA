{ config, ...}:{

boot.kernelParams = ["nvidia.NVreg_PreserveVideoMemoryAllocations=1"];

services.xserver.videoDrivers = ["nvidia"];

hardware.nvidia = {
  modesetting.enable = true;
  powerManagement = {
    enable = false;
    finegrained = false;
  };
  open = false;
  nvidiaSettings = true;
  package = config.boot.kernelPackages.nvidiaPackages.beta;
};

}
