{
wayland.windowManager.hyprland.settings = {

  monitor = [
    "eDP-1,2560x1600,0x0,1" 
    "HDMI-A-1,1920x1080,0x1600,1"
  ];

  exec-once = [
    "dunst"
    "waybar"
    "kitty"
    "hyprland-autoname-workspaces"
    "blueman-applet"
    "nm-applet"
  ];

  env = [
  	"XCURSOR_SIZE,24"
  	"XDG_CURRENT_DESKTOP, Hyprland"
  	"XDG_SESSION_TYPE, wayland"
  	"XDG_SESSION_DESKTOP, Hyprland"
  ];

  input = {
    kb_layout    = "us,ru";
    kb_options   = "grp:caps_toggle";
    follow_mouse = 1;
    touchpad = {
      natural_scroll       = false;
      disable_while_typing = false;
    };
    sensitivity  = 0;
  };

  dwindle = {
    pseudotile     = true;
    preserve_split = true;
  };
  
  master = {
    new_is_master = true;
  };
  
  gestures = {
    workspace_swipe        = true;
    workspace_swipe_invert = true;
  };

  misc = {
    force_default_wallpaper   = 0;
    disable_hyprland_logo     = true;
    disable_splash_rendering  = true;
    layers_hog_keyboard_focus = true;
    animate_manual_resizes    = true;
    enable_swallow            = true;
    swallow_regex             = "^(kitty)$";    
  };

  general = {
    layout        = "dwindle";
    allow_tearing = false;
  };

  device = {
    name = "epic-mouse-v1";
    sensitivity = -0.5;
  };

};
}
