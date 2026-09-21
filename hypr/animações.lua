-- Animações https://wiki.hypr.land/Configuring/Variables/#animations

    animations = {
        enabled = true,
    },

hl.curve("workspace",      { type = "spring", mass = 1, stiffness = 190.2523, dampening = 18 })
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 190.2633, dampening = 20 })

hl.animation({ leaf = "global",        enabled = true,  speed = 8,    spring = "workspace" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 5.1,  spring = "easy", style = "slidevert" })
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 1,     spring = "easy", style = "slide"})
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 7.49, spring = "easy", style = "slide" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 9,    spring = "workspace", style = "slidefadevert" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 2,    spring = "workspace", style = "slidefade" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, spring = "workspace", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 4.90, spring = "workspace", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 2.20, spring = "workspace", style = "slidefade" })
