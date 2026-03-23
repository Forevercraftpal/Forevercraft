# ============================================================
# Hearthstone GUI — Check Clicks
# Run as: player with HS.InMenu
# ============================================================

# Close button
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=interaction,tag=HS.CloseBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/gui/click_close

# Upgrade button
execute as @e[type=interaction,tag=HS.UpgradeBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/gui/click_upgrade

# Quick Stash button
execute as @e[type=interaction,tag=HS.StashBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/stash/gui/click_stash

# Stash Settings button
execute as @e[type=interaction,tag=HS.SettingsBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/stash/gui/click_settings

# Tier help [?] button
execute as @e[type=interaction,tag=HS.TierHelpBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/gui/click_tier_info

# Comfort help [?] button
execute as @e[type=interaction,tag=HS.ComfortHelpBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/gui/click_comfort_info

# Laborers button
execute as @e[type=interaction,tag=HS.LaborersBtn,distance=..5] if score @s adv.gui_session = #gui_check ec.temp if data entity @s interaction run function evercraft:housing/gui/click_laborers
