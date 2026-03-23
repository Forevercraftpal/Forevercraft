# === EARTHSONG — UNLIMITED VEIN MINE ===
# Recursively mines all connected blocks of the same type
# NO block limit (Journey Pickaxe caps at 64)
# Run at the position of the first broken block

# Reset vein counter
scoreboard players set #st_vein ec.var 0

# Store the block type to match (we mine whatever was just broken — use stone as fallback)
# Mark starting position
summon marker ~ ~ ~ {Tags:["ec.st_vein_start","ec.st_vein_ore"]}

# Begin recursive search
execute at @e[type=marker,tag=ec.st_vein_start,limit=1] run function evercraft:craftforever/spirit_tools/earthsong/vein_search

# Destroy all marked positions
execute as @e[type=marker,tag=ec.st_vein_ore] at @s run setblock ~ ~ ~ air destroy

# Kill markers
kill @e[type=marker,tag=ec.st_vein_ore]

# VFX
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2
particle enchant ~ ~0.5 ~ 1 1 1 1 20
