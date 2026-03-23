# Info browser tick — distance check + click detection
# Runs as @s = player with ec.InGachaInfo, at @s

# Auto-close if player walks too far from anchor
execute unless entity @e[tag=ec.GachaInfoAnchor,distance=..5] run return run function evercraft:gacha/fountain/info/close

# Auto-close after 20 seconds of inactivity (400 ticks)
scoreboard players add @s ec.gi_idle 1
execute if score @s ec.gi_idle matches 400.. run return run function evercraft:gacha/fountain/info/close
execute as @e[type=interaction,tag=ec.GachaInfoSlot,distance=..5] if data entity @s interaction run scoreboard players set @p[tag=ec.InGachaInfo,distance=..5] ec.gi_idle 0
execute as @e[type=interaction,tag=ec.GachaInfoFrame,distance=..5] if data entity @s interaction run scoreboard players set @p[tag=ec.InGachaInfo,distance=..5] ec.gi_idle 0

# Check for clicks
function evercraft:gacha/fountain/info/check_clicks
