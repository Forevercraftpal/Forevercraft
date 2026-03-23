# ============================================================
# Stash Settings — Execute toggle (macro)
# Run as: player with HS.InSettings
# Args: category, title, cat_color
# ============================================================

# Store current state (must check BEFORE modifying)
scoreboard players set #hs_toggle hs.temp 0
$execute if entity @s[tag=hs.keep_$(category)] run scoreboard players set #hs_toggle hs.temp 1

# Toggle: if was kept → remove (stash), if was stashed → add (keep)
$execute if score #hs_toggle hs.temp matches 1 run tag @s remove hs.keep_$(category)
$execute if score #hs_toggle hs.temp matches 0 run tag @s add hs.keep_$(category)

# Refresh all displays
execute at @s run function evercraft:housing/stash/keep/refresh_settings

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
