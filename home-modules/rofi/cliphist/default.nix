{ pkgs, ... }:{

home = {
  packages = builtins.attrValues (import ./pkg.nix {inherit pkgs;});
  file = {
    ".config/rofi/launchers/rofi-cliphist/rofi-cliphist.sh" = {
      executable = true;
      text = builtins.readFile ( ./script.sh );
    };
    ".config/rofi/launchers/rofi-cliphist/style.rasi".text = builtins.readFile ( ./style.rasi );
  };
};

}
