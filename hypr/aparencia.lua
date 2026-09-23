-- Aparencial geral https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    general = {
        gaps_in  = 2,
        gaps_out = { top = 0, left = 5, right = 5, bottom = 4},
        gaps_workspaces = 0,
        border_size = 2,

        col = {
            active_border   = { 
                colors = {"rgba(131, 92, 237,1)", "rgba(52, 0, 196,1)", "rgba(245, 93, 170,1)", "rgba(189, 32, 107,1)"}
            },
            inactive_border = {
                colors = {"rgba(245, 93, 170,1)", "rgba(189, 32, 107,1)"}
            },
        },
        
        resize_on_border = true,
        resize_corner = 2,
        allow_tearing = true,
        layout = "master",
    },
    
    decoration = {
        rounding = 8,
        rounding_power = 0.5,
        active_opacity = 1,
        inactive_opacity = 0.8,
        
        blur = {
            enabled   = true,
            size = 9,
        }
    },
    render ={
        direct_scanout = 1,
        new_render_scheduling = true,        
    } 
})



