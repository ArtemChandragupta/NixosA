{ var, ... }:{

imports = [
  ./btop.nix
  ./zathura.nix
  ./gtk+qt+cursor.nix
  ./kitty.nix
  ./helix.nix
  ./wofi.nix
  ./git.nix

  ./hyprland
  ./yazi
  ./rofi
  ./ags
  ./nixvim
  ./swaync
];

programs.home-manager.enable = true;

home = {
  username = var.username;
  homeDirectory = "/home/${var.username}";  
  stateVersion = "23.11";
  sessionVariables = {
    BROWSER  = "firefox";
    TERMINAL = "kitty";
  };
};

xdg = {
  enable = true;
  mime.enable = true;
  mimeApps = {
    enable = true;
    
    associations.added = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];
    };
    
    defaultApplications = {
      "application/pdf" = [ "org.gnome.Evince.desktop" ];
      "image/*"         = [ "org.gnome.Loupe.desktop"  ];
      "video/*"         = [ "totem.desktop"            ];
    };
    
  };
};

}
