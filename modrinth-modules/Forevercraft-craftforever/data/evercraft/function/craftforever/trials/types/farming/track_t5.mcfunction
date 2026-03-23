# T5: Grow all 6 crop types — count unique types where delta > 0
# Score = number of unique crop types harvested (target 6)

scoreboard players set @s ec.tt_score 0

# Wheat check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_wheat
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.wheat
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Carrot check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_carrot
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.carrot
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Potato check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_potato
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.potato
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Beetroot check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_beetrt
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.beetroot
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Melon check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_melon
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.melon
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Pumpkin check
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_pumpkn
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials farm_t5.pumpkin
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1
