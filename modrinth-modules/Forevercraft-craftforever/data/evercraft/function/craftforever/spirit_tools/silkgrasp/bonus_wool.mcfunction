# Silkgrasp — Bonus wool on pickup (double drops, all colors)
# Delta is calculated from the all-color total in passive.mcfunction
scoreboard players operation #st_temp ec.var = #st_wool_total ec.var
scoreboard players operation #st_temp ec.var -= @s ec.st_wool_prev

# Give bonus white wool equal to what was picked up (effectively doubling yield)
# White wool chosen as universal bonus — could be dyed by player
execute if score #st_temp ec.var matches 1 run give @s white_wool 1
execute if score #st_temp ec.var matches 2 run give @s white_wool 2
execute if score #st_temp ec.var matches 3..5 run give @s white_wool 3
execute if score #st_temp ec.var matches 6.. run give @s white_wool 6

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.3 1.5
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 5

# Affinity extra wool: 5-9% boost: +1, 10-14%: +2, 15%+: +3
execute if score @s ec.caff_boost matches 5..9 run give @s white_wool 1
execute if score @s ec.caff_boost matches 10..14 run give @s white_wool 2
execute if score @s ec.caff_boost matches 15.. run give @s white_wool 3

# Grant crafting affinity XP: 5 per wool collected
function evercraft:craft_affinity/grant {class_id:6, delta:5}

# Crate drop chance on shear
function evercraft:craft_affinity/try_crate_drop
