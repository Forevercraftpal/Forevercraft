# === EARTHSONG — AUTO-SMELT ===
# FIX #6: Process one item at a time (limit=1) to prevent race condition
# where multiple smelt functions target the same ec.st_smelted tag.
# Called every 10 ticks from passive. Run at player position.

# Raw Iron → Iron Ingot (one at a time)
execute as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:raw_iron"}},limit=1,sort=nearest] at @s run function evercraft:craftforever/spirit_tools/earthsong/smelt_iron

# Raw Gold → Gold Ingot
execute as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:raw_gold"}},limit=1,sort=nearest] at @s run function evercraft:craftforever/spirit_tools/earthsong/smelt_gold

# Raw Copper → Copper Ingot
execute as @e[type=item,distance=..8,nbt={Item:{id:"minecraft:raw_copper"}},limit=1,sort=nearest] at @s run function evercraft:craftforever/spirit_tools/earthsong/smelt_copper
