# Inscription — Inscribe Block
# Runs at block center (aligned + 0.5, floor, 0.5), as the player
# Storage evercraft:inscription temp has {rune:"<zone_type>", loot:"<glyph_name>"}

# Block already inscribed? Restore glyph instead of stacking.
execute positioned ~ ~0.5 ~ if entity @e[type=marker,tag=ec.inscr_stone,distance=..0.3] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This block is already inscribed! Use shears to remove it first.",color:"red"}]
execute positioned ~ ~0.5 ~ if entity @e[type=marker,tag=ec.inscr_stone,distance=..0.3] run tag @s add ec.inscr_restore
execute positioned ~ ~0.5 ~ if entity @e[type=marker,tag=ec.inscr_stone,distance=..0.3] run return 0

# Summon marker — rune type from storage
function evercraft:inscription/summon_marker with storage evercraft:inscription temp

# Store player's UUID[3] as owner ID on the new marker (for break tracking)
execute store result score @e[tag=ec.inscr_new,limit=1] ec.inscr_owner run data get entity @s UUID[3]

# Rune Word Combos: check if new stone forms a cross-type combo
execute as @e[tag=ec.inscr_new,limit=1] at @s run function evercraft:inscription/check_rune_word
