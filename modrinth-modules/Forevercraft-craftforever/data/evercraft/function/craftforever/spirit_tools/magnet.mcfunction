# === SPIRIT TOOLS — ITEM MAGNET ===
# 10-tick schedule. Pulls items + XP orbs to spirit tool holders.

# Earthsong: 16-block magnet
execute as @a[tag=ec.st_held,scores={ec.st_tool=1}] at @s run tp @e[type=item,distance=..16,nbt=!{PickupDelay:32767s}] @s
execute as @a[tag=ec.st_held,scores={ec.st_tool=1}] at @s run tp @e[type=experience_orb,distance=..16] @s

# Heartwood: 16-block magnet
execute as @a[tag=ec.st_held,scores={ec.st_tool=5}] at @s run tp @e[type=item,distance=..16,nbt=!{PickupDelay:32767s}] @s
execute as @a[tag=ec.st_held,scores={ec.st_tool=5}] at @s run tp @e[type=experience_orb,distance=..16] @s

# Silkgrasp: 12-block magnet
execute as @a[tag=ec.st_held,scores={ec.st_tool=6}] at @s run tp @e[type=item,distance=..12,nbt=!{PickupDelay:32767s}] @s
execute as @a[tag=ec.st_held,scores={ec.st_tool=6}] at @s run tp @e[type=experience_orb,distance=..12] @s

schedule function evercraft:craftforever/spirit_tools/magnet 10t
