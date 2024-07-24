{ pkgs, ... }:{

environment.systemPackages = with pkgs; [
  kitty
  zellij

  firefox
  obsidian
  transmission_4-gtk
  gnome.gnome-tweaks
  mpv

  telegram-desktop
  discord
  localsend

  libreoffice-qt
  onlyoffice-bin

  openscad
  inkscape
  drawio
  dosbox-x
];

}
