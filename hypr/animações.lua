-- Animações https://wiki.hypr.land/Configuring/Variables/#animations

    animations = {
        enabled = true,
    },

hl.curve("workspace",      { type = "spring", mass = 0.6, stiffness = 190.2523, dampening = 20 })
hl.curve("easy",           { type = "spring", mass = 0.7, stiffness = 170.2633, dampening = 22 })

hl.animation({ leaf = "global",        enabled = true,  speed = 8,    spring = "workspace" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 5.1,  spring = "easy", style = "slidevert" })
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 1,     spring = "easy", style = "slide"})
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 7.49, spring = "easy", style = "slide" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 9,    spring = "workspace", style = "slidefadevert" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 2,    spring = "workspace", style = "slidefade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.90, spring = "workspace", style = "slidefade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.20, spring = "workspace", style = "slidefade" })
