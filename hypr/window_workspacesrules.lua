local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = {
      class = ".*" 
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})
hl.window_rule({
    match       = { class = "flameshot" },
    no_anim     = true,
    pin         = true,
    float       = false,
    decorate    = false,
    no_blur     = true,
    no_shadow   = true,
})
hl.window_rule({
    match   = { class = "flameshot", title = "flameshot" },
    move    = { 0, 0 },
})
hl.window_rule({
    match = { class = "flameshot", title = "flameshot-pin" },
    move  = { "cursor_x-(window_w*0.5)", "cursor_y-(window_h*0.5)" },
})
hl.window_rule({
    name  = "move-hyprland-run",
    match = {
        class = "hyprland-run" 
    },
    move  = "20 monitor_h-120",
    float = true,
})
hl.window_rule({
    name = "videos",
    match = {
        initial_class = "mpv"
    },
    float = true,
    decorate = false,
    fullscreen_state = 2,
})
hl.window_rule({
    name = "PiP",
    match = {
        initial_title = "Picture-in-picture"
    },
    float = true,
    pin = true,
    decorate = false,
    no_follow_mouse = true,
    opacity = "1.0 override 1.0 override 1.0 override",
    size = {
        "(monitor_w*0.26)", "(monitor_h*0.27)"
    },
    move  = {
        "(monitor_w*0.05)", "(monitor_h*0.15)"
    }
})

hl.window_rule({
    name = "media-player",
    match = {
        initial_class = "org.jellyfin.JellyfinDesktop"
    },
    fullscreen_state = 2
})
hl.window_rule({
    name = "steam-float",
    match = {
        initial_class = "steam",
        initial_title = "negative:Steam"
    },
    tag = "float"
})

hl.window_rule({
    name = "bitwarden-float",
    match = {
        initial_title = "_crx_nngceckbapebfimnlniiiahkandclblb"
    },
    tag = "float",
    size = {
        "(monitor_w*0.35)", "(monitor_h*0.75)",
    },
    move = {
        "(monitor_w*0.15)", "(monitor_h*0.15)",
    },
})
hl.window_rule({
    name = "prism-launcher",
    match = {
        initial_class = "org.prismlauncher.PrismLauncher",
        initial_title = ".*—.*"
    },
    tag = "float",
    size = {
        "(monitor_w*0.21)", "(monitor_h*0.18)",
    },
    animation = "popin"
})
hl.window_rule ({
    name = "obsidian",
    match = {
        initial_class = "obsidian",
    },
    tag = "float",
    size = {
        "(monitor_w*0.5)", "(monitor_h*0.8)",
    },
    move = {
        "(monitor_w*0.45)", "(monitor_h*0.06)",
    }
})
hl.window_rule({
    name = "pop-up-gtk",
    match = {
        initial_class = "xdg-desktop-portal-gtk"
    },
    tag = "float",
    size = {
        "(monitor_w*0.65)", "(monitor_h*0.75)",
    },
    move = {
        "(monitor_w*0.09)", "(monitor_h*0.06)",
    },
})
hl.window_rule({
    name = "pop-up-screenshare",
    match = {
        initial_class = "hyprland-share-picker"
    },
    size = {
        "(monitor_w*0.45)", "(monitor_h*0.60)",
    },
    tag = "float"
})
hl.on("window.open", function()
    local w = hl.get_active_window()
    if w ~= nil and w.title == "kitty" then
        hl.dispatch(hl.dsp.layout("swapwithmaster master"))
    end
end)
hl.window_rule({
    match = {
        initial_class = ".*.x86_64.*",
    },
    tag = "game"
})
hl.window_rule({
    match = {
        initial_class = ".*mojang.*"
    },
    tag = "game"
})
hl.window_rule({
    match = {
        initial_class = ".*steam_app_.*"
    },
    tag = "game"
})
hl.window_rule({
    match = {
        tag = "game"
    },
    workspace = 3,
    tile = true,
    center = true,
    immediate = true,
    fullscreen_state = 0,
    no_anim = true
})
hl.window_rule({
    name = "float",
    match = {
        tag = "float"
    },
    float = true,
    border_size = 0,
    animation = "slide",
})

hl.on("workspace.active", function(ws)
    if ws.name == "3" then
        hl.dispatch(hl.dsp.exec_cmd("pkill waybar"))
    end
    local lws = hl.get_last_workspace()
    if lws.name == "3" then
        hl.dispatch(hl.dsp.exec_cmd("waybar"))
    end
end)

hl.workspace_rule({
    workspace = 3,
    gaps_in = 0,
    gaps_out = 0,
    decorate = false,
    no_rounding = true

})
