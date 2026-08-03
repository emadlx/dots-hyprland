-- custom/keybinds.lua
-- This file ONLY contains keybinds that differ from the base
-- hyprland/keybinds.lua (which is always loaded first). Every key here
-- is unbound from its base behavior, then rebound to its new action.
-- Do NOT copy unchanged base binds into this file — hl.bind is additive,
-- not a replace, so duplicating an unchanged bind here fires it twice.

--#####################################################
--## APPS — custom app launcher shortcuts
--#####################################################
--# NOTE: exec commands below are the actual launcher commands confirmed
--# on this machine (verified with `which` / .desktop Exec= lines):
--# Telegram, android-studio confirmed working; others assumed standard
--# package names — verify with `which <cmd>` if one doesn't launch.

-- Browser (was: sidebar toggle alt / default browser)
hl.unbind("SUPER + B")
hl.bind("SUPER + B", hl.dsp.exec_cmd("brave"), { description = "App: Brave" })

-- Obsidian (was: sidebar toggle alt)
hl.unbind("SUPER + O")
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"), { description = "App: Obsidian" })

-- Dataspell (was: window maximize)
hl.unbind("SUPER + D")
hl.bind("SUPER + D", hl.dsp.exec_cmd("dataspell"), { description = "App: Dataspell" })

-- Nextcloud (was: right sidebar toggle)
hl.unbind("SUPER + N")
hl.bind("SUPER + N", hl.dsp.exec_cmd("nextcloud"), { description = "App: Nextcloud" })

-- Right sidebar / notifications — moved here from SUPER+N
hl.bind("SUPER + SHIFT + N", hl.dsp.global("quickshell:sidebarRightToggle"),
    { description = "Shell: Toggle right sidebar (notifications)" })

-- Stremio (was: scratchpad toggle — SUPER+S alone still works for that)
hl.unbind("CTRL + SUPER + S")
hl.bind("CTRL + SUPER + S", hl.dsp.exec_cmd("flatpak run com.stremio.Stremio"), { description = "App: Stremio" })

-- New app shortcuts — no base conflict, no unbind needed
hl.bind("SUPER + CTRL + A", hl.dsp.exec_cmd("android-studio"), { description = "App: Android Studio" })
hl.bind("SUPER + ALT + P", hl.dsp.exec_cmd("pycharm"), { description = "App: Pycharm" })
hl.bind("SUPER + CTRL + I", hl.dsp.exec_cmd("idea"), { description = "App: IntelliJ IDEA" })
hl.bind("SUPER + ALT + D", hl.dsp.exec_cmd("drawio"), { description = "App: Draw.io" })
hl.bind("SUPER + CTRL + F", hl.dsp.exec_cmd("figma-linux"), { description = "App: Figma" })
hl.bind("SUPER + CTRL + D", hl.dsp.exec_cmd("nwg-displays"), { description = "App: Display settings" })
hl.bind("SUPER + ALT + T", hl.dsp.exec_cmd("Telegram"), { description = "App: Telegram" })
hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd("discord"), { description = "App: Discord" })
hl.bind("SUPER + ALT + N", hl.dsp.exec_cmd("notion-app"), { description = "App: Notion" })

--#####################################################
--## KEYBOARD LANGUAGE SWITCHING
--#####################################################
hl.config({
    input = {
        kb_layout = "us,ara",
        kb_options = "grp:win_space_toggle",
    },
})