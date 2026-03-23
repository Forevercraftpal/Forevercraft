# ============================================================
# House Key GUI — Tick
# Called every tick for players with HS.InSatchel tag
# Run as: player, at player position
# ============================================================

execute unless entity @s[tag=HS.InSatchel] run return 0

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s hs.menu_time 1
execute if score @s hs.menu_time matches 400.. run return run function evercraft:housing/satchel/gui/close

# Close if player switched away from House Key (grace period for consume restore)
execute if score @s hs.menu_time matches 5.. unless entity @s[nbt={SelectedItem:{id:"minecraft:ominous_trial_key"}}] run return run function evercraft:housing/satchel/gui/close

# Reset inactivity timer if any menu button was clicked this tick
execute as @e[type=interaction,tag=HS.MenuEl,distance=..5] if data entity @s interaction run scoreboard players set @p[tag=HS.InSatchel,distance=..5] hs.menu_time 0

# Check for clicks (settings sub-menu has its own click handler)
execute if entity @s[tag=HS.InSettings] run return run function evercraft:housing/stash/keep/check_clicks
function evercraft:housing/satchel/gui/check_clicks
