# Wild Trim Single Piece — Per-Player Effects
# OPT: 3 @a[tag=single_wild] scans → 1 per-player function

# Speed 1 always
effect give @s speed 3 0 false

# Strength to nearby tamed pets
# Tag-gate avoids repeated NBT scans on already-seen tamed mobs
execute at @s run tag @e[type=#minecraft:tameable,distance=..16,nbt={Tame:1b},tag=!ec.tamed] add ec.tamed
execute at @s run effect give @e[type=#minecraft:tameable,distance=..16,tag=ec.tamed] strength 3 0 false
