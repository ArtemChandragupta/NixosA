{ var, inputs, ... }:{

imports = [
  inputs.home-manager.nixosModules.default
    
  ./modules
  ./environment/glossynix
];

users.users.${var.username} = {
  isNormalUser = true;
  extraGroups = [ 
    "networkmanager"
    "wheel"
    "audio"
    "video"
    "input"
    "libvirtd"
    "docker"
  ];
};

home-manager = {
  extraSpecialArgs = { inherit inputs var; };
  users = {
    "${var.username}" = import ./home-modules/home.nix;
  };
};

environment.variables = {
  TERM = "kitty";
  TERMINAL = "kitty";
};

documentation.nixos.enable = false;
system.stateVersion = "23.11";

}
