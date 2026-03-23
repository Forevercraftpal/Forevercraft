# Lore GUI — Count Collected Pieces for a Set (Macro)
# Macro arg: fill_set_id
# Sets: fill_meta, #lore_fill_rar, #lore_fill_req, #lore_fill_have
# Run as the player

# Load set metadata
$data modify storage evercraft:lore fill_meta set from storage evercraft:lore sets.s$(fill_set_id)
execute store result score #lore_fill_rar ec.temp run data get storage evercraft:lore fill_meta.rarity
execute store result score #lore_fill_req ec.temp run data get storage evercraft:lore fill_meta.pieces

# Count collected pieces via advancement checks (max 8 per set)
scoreboard players set #lore_fill_have ec.temp 0
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p1=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p2=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p3=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p4=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p5=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p6=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p7=true}] run scoreboard players add #lore_fill_have ec.temp 1
$execute if entity @s[advancements={evercraft:lore/collected/s$(fill_set_id)/p8=true}] run scoreboard players add #lore_fill_have ec.temp 1
