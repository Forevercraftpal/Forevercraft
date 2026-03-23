# The Eternal Pharaoh — Cleansing Altar Tick
# Interaction entity — clicking removes all negative effects from clicker
# Shared 15-second (300 tick) cooldown

# Check for click
execute as @e[tag=ec.rd_ep_altar] at @s if data entity @s interaction if score #rd_ep_altar_cd ec.var matches 0 run function evercraft:raids/boss/eternal_pharaoh/puzzle/altar_cleanse
execute as @e[tag=ec.rd_ep_altar] at @s if data entity @s interaction if score #rd_ep_altar_cd ec.var matches 1.. run data remove entity @s interaction

# Altar visual (particles)
execute as @e[tag=ec.rd_ep_altar] at @s run particle minecraft:enchant ~ ~1.5 ~ 0.3 0.5 0.3 0.5 2
execute if score #rd_ep_altar_cd ec.var matches 0 as @e[tag=ec.rd_ep_altar] at @s run particle minecraft:end_rod ~ ~2 ~ 0.2 0.3 0.2 0.02 1
