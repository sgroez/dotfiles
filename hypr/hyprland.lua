------------------
---- MONITORS ----
------------------

hl.monitor({
    output = "",
    mode = "preferred",
    position = "0x0",
    scale = 1,
})


---------------------
---- MY PROGRAMS ----
---------------------

local terminal = "kitty"
local appLauncher = "fuzzel"


-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
  hl.exec_cmd("quickshell")
end)


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border = { colors = {"rgb(33ccff)", "rgb(00ff99)"}, angle = 45 },
            inactive_border = "rgb(595959)",
        },
    

        layout = "master",
    },

    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
        background_color = "rgb(B2BCAA)",
    },

    decoration = {
        active_opacity = 1.0,
        inactive_opacity = 1.0,

        blur = {
            enabled = false,
        },

        shadow = {
            enabled = false,
        },
    },

    animations = {
        enabled = false,
    },

    master = {
        new_status = "slave",
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout = "de",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        touchpad = {
            natural_scroll = true,
        },
    },
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "ALT"

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(appLauncher))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("shutdown -h now"))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))

-- Move focus with mainMod + vim move
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move windows with mainMod + shift + vim move
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move window to workspace with mainMod + shift + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Screenshot using hyprshot
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))

-- Brightness controll
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 10%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"))