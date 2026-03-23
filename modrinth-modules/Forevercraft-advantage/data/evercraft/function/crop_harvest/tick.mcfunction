# Crop Auto-Replant — Detect crop breaks while holding a hoe
# Uses minecraft.mined stats per crop type; raycasts to find the empty spot and replants

# Per-crop detection + replant
execute as @a[scores={ec.rh_wheat=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"wheat"}
execute as @a[scores={ec.rh_carrot=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"carrots"}
execute as @a[scores={ec.rh_potato=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"potatoes"}
execute as @a[scores={ec.rh_beet=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"beetroots"}
execute as @a[scores={ec.rh_nwart=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"nether_wart"}

# 3% chance to drop a cooking ingredient on crop break (per-player safe via sub-function)
execute as @a[scores={ec.rh_wheat=1..}] at @s run function evercraft:crop_harvest/try_ingredient_drop
execute as @a[scores={ec.rh_carrot=1..}] at @s run function evercraft:crop_harvest/try_ingredient_drop
execute as @a[scores={ec.rh_potato=1..}] at @s run function evercraft:crop_harvest/try_ingredient_drop
execute as @a[scores={ec.rh_beet=1..}] at @s run function evercraft:crop_harvest/try_ingredient_drop
execute as @a[scores={ec.rh_nwart=1..}] at @s run function evercraft:crop_harvest/try_ingredient_drop

# 3% chance to drop a forging ingredient on ore mining
execute as @a at @s run function evercraft:crop_harvest/ore_ingredient_check

# Track crops harvested for challenges/advantage
execute as @a[scores={ec.rh_wheat=1..}] run scoreboard players operation @s adv.stat_harvest += @s ec.rh_wheat
execute as @a[scores={ec.rh_carrot=1..}] run scoreboard players operation @s adv.stat_harvest += @s ec.rh_carrot
execute as @a[scores={ec.rh_potato=1..}] run scoreboard players operation @s adv.stat_harvest += @s ec.rh_potato
execute as @a[scores={ec.rh_beet=1..}] run scoreboard players operation @s adv.stat_harvest += @s ec.rh_beet
execute as @a[scores={ec.rh_nwart=1..}] run scoreboard players operation @s adv.stat_harvest += @s ec.rh_nwart

# Reset mined stats
scoreboard players set @a[scores={ec.rh_wheat=1..}] ec.rh_wheat 0
scoreboard players set @a[scores={ec.rh_carrot=1..}] ec.rh_carrot 0
scoreboard players set @a[scores={ec.rh_potato=1..}] ec.rh_potato 0
scoreboard players set @a[scores={ec.rh_beet=1..}] ec.rh_beet 0
scoreboard players set @a[scores={ec.rh_nwart=1..}] ec.rh_nwart 0
