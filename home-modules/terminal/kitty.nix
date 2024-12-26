{

programs.kitty = {
  enable = true;
  font = { # Can be viewed by ">~ kitty +list-fonts"
    name = "JetBrainsMono Nerd Font";
    size = 12;
  };
  settings = {
    confirm_os_window_close = 0;
    window_padding_width = 5;

    background_opacity = "0.9";

    cursor                = "#928374";
    cursor_text_color     = "background";

    url_color             = "#83a598";

    visual_bell_color     = "#8ec07c";
    bell_border_color     = "#8ec07c";

    active_border_color   = "#d3869b";
    inactive_border_color = "#665c54";

    foreground            = "#ebdbb2";
    background            = "#282828";
    selection_foreground  = "#928374";
    selection_background  = "#ebdbb2";

    active_tab_foreground   = "#fbf1c7";
    active_tab_background   = "#665c54";
    inactive_tab_foreground = "#a89984";
    inactive_tab_background = "#3c3836";
  
    # black  (bg3/bg4)
    color0  = "#665c54";
    color8  = "#7c6f64";

    # red
    color1  = "#cc241d";
    color9  = "#fb4934";

    # green
    color2  = "#98971a";
    color10 = "#b8bb26";

    # yellow
    color3  = "#d79921";
    color11 = "#fabd2f";

    # blue
    color4  = "#458588";
    color12 = "#83a598";

    # purple
    color5  = "#b16286";
    color13 = "#d3869b";

    # aqua
    color6  = "#689d6a";
    color14 = "#8ec07c";

    # white (fg4/fg3)
    color7  = "#a89984";
    color15 = "#bdae93";
  };
};

}
