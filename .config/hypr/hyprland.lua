-- ~/.config/hypr/hyprland.lua

-- Define our primary modifier key
local mod = "SUPER"

-- 1. Core Configurations(Layout and DemVAMPS theme)
hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 12,
		border_size = 3,
		
		--DemVamps Lavinia aesthetic: Crimson Red Fading into Deep Purple
		["col.active_border"] = {
			colors = {"rgba(dc143cff)", "rgba(4b0082ff)" },
			angle = 45
		},

		--Pitch black for unfocused windows
		["col.inactive_border"] = "rgba(000000ff)",
	},
	decoration = {
		rounding = 0, --keep edges razor-sharp to fit the vampire aesthetic
	}
})

-- 2. Autostart Daemon 
hl.on("hyprland.start", function()
	hl.exec_cmd("swaybg -i ~/Pictures/demvamps.png -m fill")
end)

-- 3. Keybindings
--Open Kitty Terminal

hl.bind(mod .. " + RETURN",hl.dsp.exec_cmd("kitty"))

--open rofi application launcher
hl.bind(mod .. " + SPACE",hl.dsp.exec_cmd("rofi -show drun"))

--close the active window
hl.bind(mod .. " + Q",hl.dsp.window.close())

--Emergency exit (drops you back to the TTY)
hl.bind(mod .. " + M",hl.dsp.exec_cmd("hyprctl dispatch exit"))
--4. Window rule & workspaces
hl.config({
	windowrule = {
		--force rofi to float and center itself
		{"float", "class:^(rofi)$" },
		{"center", "class:^(rofi)$" },
		-- make kitty slightly transparent for that moody dark aesthetic
		{"opacity 0.9 0.9", "class:^(kitty)$"}
	}
})

-- workspace keybindings
-- switch to workspace 1-9
hl.bind(mod .. " + 1", hl.dsp.exec_cmd("hyprctl dispatch workspace 1"))
hl.bind(mod .. " + 2", hl.dsp.exec_cmd("hyprctl dispatch workspace 2"))
hl.bind(mod .. " + 3", hl.dsp.exec_cmd("hyprctl dispatch workspace 3"))
hl.bind(mod .. " + 4", hl.dsp.exec_cmd("hyprctl dispatch workspace 4"))

-- Move active window to workspace 1-4
hl.bind(mod .. " + SHIFT + 1", hl.dsp.exec_cmd("hyprctl dispatch movetoworkspace 1"))
hl.bind(mod .. " + SHIFT + 2", hl.dsp.exec_cmd("hyprctl dispatch movetoworkspace 2"))
hl.bind(mod .. " + SHIFT + 3", hl.dsp.exec_cmd("hyprctl dispatch movetoworkspace 3"))
hl.bind(mod .. " + SHIFT + 4", hl.dsp.exec_cmd("hyprctl dispatch movetoworkspace 4")) 

-- Audio and Media Controls
hl.bind("XF86AudioRaiseVolume",hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume",hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute",hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

