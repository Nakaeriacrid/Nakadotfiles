-- Animações https://wiki.hypr.land/Configuring/Variables/#animations

    animations = {
        workspace_wraparound = true,
        enabled = true,
    }, 

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.68, -0.6}, {0.32, 1.6}    } })

hl.curve("workspace",      { type = "spring", mass = 1, stiffness = 190.2523, dampening = 18 })
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 200.2633, dampening = 20 })

hl.animation({ leaf = "global",        enabled = true,  speed = 8,    spring = "workspace" })
hl.animation({ leaf = "shadowangle",   enabled = true,  speed = 14,   spring = "easy" })
hl.animation({ leaf = "glowangle",     enabled = true,  speed = 14,   spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 5.1,  spring = "easy", style = "slidevert" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 7.49, spring = "easy", style = "slide" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 4.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 3.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 4.03, bezier = "almostLinear" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 1,    spring = "easy", style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1,    spring = "easy", style = "slide" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 4.90, spring = "workspace", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 2.20, spring = "workspace", style = "slidefade" })
