{
programs.yazi = {
enable = true;

  settings = {
    manager = {
      layout = [ 1 4 3 ];
      sort_by = "alphabetical";
      sort_sensitive = false;
      sort_reverse = false;
      sort_dir_first = true;
      linemode = "none";
      show_hidden = false;
      show_symlink = true;
    };      
  };

  keymap = {  
    manager.prepend_keymap = [
      {
        on = [ "y" ];
        run = [
          "yank" 
          '' 
            shell --confirm 'for path in "$@"; do echo "file://$path"; done | wl-copy -t text/uri-list' 
          ''
        ];
      }
    ];
  };

};

imports = [
  ./opener.nix
  ./theme.nix
  ./plugins.nix
  ./files.nix
];

}
