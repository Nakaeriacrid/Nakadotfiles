-- Teclas de atalho https://wiki.hypr.land/Configuring/Basics/Binds/
-- https://wiki.hypr.land/Configuring/Basics/Dispatchers/#dispatchers-1

hl.bind(spr .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")) 
hl.bind(spr .. " + I", hl.dsp.exec_cmd("pkill waybar && waybar")) 
hl.bind(spr .. " + F", hl.dsp.window.fullscreen({ 
    mode = maximized, 
    action = toggle
})) 
hl.bind("Print", hl.dsp.exec_cmd("flameshot full")) 
hl.bind(alt .. " + Print", hl.dsp.exec_cmd("flameshot gui -s"))
hl.bind(alt .. " + P", hl.dsp.exec_cmd("flameshot gui"))
hl.bind(spr .. " + Q", hl.dsp.exec_cmd(terminal)) 
hl.bind(spr .. " + X", hl.dsp.exec_cmd(menu)) 
hl.bind(spr .. " + W", hl.dsp.exec_cmd(filemanager))
hl.bind(alt .. " + F", hl.dsp.exec_cmd(mediaplayer))
hl.bind(spr .. " + L", hl.dsp.exec_cmd(browser))
hl.bind(alt .. " + V", hl.dsp.exec_cmd(discord)) 
hl.bind(alt .. " + L", hl.dsp.exec_cmd("lutris")) 
hl.bind(alt .. " + C", hl.dsp.exec_cmd(editor)) 
hl.bind(spr .. " + P", hl.dsp.exec_cmd(sys)) 

hl.bind(spr .. " + mouse:274", hl.dsp.window.close()) 
hl.bind(alt .. " + mouse:274", hl.dsp.send_shortcut({
    mods = "CTRL SHIFT",
    key = "M",
    window = "class:^(vesktop)$"
}))

 -- CONTROLE DE MIDIA
hl.bind(alt .. " + SHIFT + mouse:276", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind(alt .. " + SHIFT + mouse:272", hl.dsp.exec_cmd("playerctl previous"))
hl.bind(alt .. " + SHIFT + mouse:273", hl.dsp.exec_cmd("playerctl next"))
hl.bind(alt .. " + SHIFT + mouse:274", hl.dsp.exec_cmd("playerctl loop track"))
hl.bind(alt .. " + SHIFT + mouse_down", hl.dsp.exec_cmd("playerctl volume 0.05-"))
hl.bind(alt .. " + SHIFT + mouse_up", hl.dsp.exec_cmd("playerctl volume 0.05+"))

hl.bind(spr .. " + mouse_down", hl.dsp.focus({ 
    workspace = "e-1" 
}))                       
hl.bind(spr .. " + mouse_up",   hl.dsp.focus({
    workspace = "e+1" 
}))
hl.bind(spr .. " + mouse:272", hl.dsp.window.drag(), {
    mouse = true
})
hl.bind(spr .. " + mouse:273", hl.dsp.window.resize(), { 
    mouse = true 
})
hl.bind(alt .. " + mouse_up", hl.dsp.layout("swapwithmaster"))

for i = 1, 10 do 
    local key = i % 10 
    hl.bind(spr .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(spr .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i })) 
end




