-- Configuração de monitor https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})

-- Auto inicialização https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function ()
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("waybar & steam -silent & hyprpaper & swaync & openrgb --noautoconnect -p Vermeio")
  hl.exec_cmd(browser, {workspace = 1})
  hl.exec_cmd("kitty -d '.local/share/Steam/steamapps/common/Valheim dedicated server' -e ./start_server_bepinex.sh", {workspace = "10 silent"})
end)

-- Hibernar sistema

hl.on("hyprland.shutdown", function()
  hl.exec_cmd("openrgb --noautoconnect -p Preto")
end)

-- Permissões https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

hl.config({ 
  ecosystem = {
    enforce_permissions = true,
    no_donation_nag = true,
    no_update_news = true
  },
})
  
  hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
  hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
  hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
  hl.permission("/usr/(bin|local/bin)/hyprpicker", "screencopy", "allow")

-- Input https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
  
    master = {
        new_status = "slave",
        new_on_top = true,
        mfact = 0.78
    },
    binds = {
      workspace_back_and_forth = true,
    },
    misc = {
        force_default_wallpaper = 1,
        animate_manual_resizes = true,
        disable_hyprland_logo = true,
        animate_mouse_windowdragging = true,
    },
    input = {
        kb_layout  = "br",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0,
    },
})

--Puxar outros arquivos

require("animações") -- Animações
require("padroes") -- Variaveis de configuração
require("envs") --Variaveis de ambiente
require("atalhos") -- Aplicativos padrões e teclas de atalho
require("window_workspacesrules") -- Regras do comportamento de janelas
require("aparencia") -- Aparencia geral do Hyprland
