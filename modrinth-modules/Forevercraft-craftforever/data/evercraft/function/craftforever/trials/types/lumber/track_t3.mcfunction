# T3: Chop 3 different wood types — count unique types with delta > 0
scoreboard players set @s ec.tt_score 0

# Oak
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_oaklog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.oak
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Spruce
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_sprlog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.spruce
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Birch
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_birlog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.birch
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Jungle
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_junlog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.jungle
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Acacia
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_acalog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.acacia
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Dark Oak
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_drklog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.dark_oak
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Mangrove
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_mnglog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.mangrove
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Cherry
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_chrlog
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials lumber_t3.cherry
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1
