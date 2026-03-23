# T3: Harvest 3 different crop types — count unique types where delta > 0
# Score = number of unique crop types harvested (target 3)

scoreboard players set @s ec.tt_score 0

# Wheat check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_wheat
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t3.wheat
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Carrot check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_carrot
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t3.carrot
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Potato check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_potato
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t3.potato
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1
