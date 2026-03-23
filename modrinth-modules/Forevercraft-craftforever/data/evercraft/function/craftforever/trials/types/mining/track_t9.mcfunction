# T9: Master Miner — Mine one of each OW ore type (9 types)
# Score = number of unique ore types mined (target 9)
# Types: coal, iron, copper, gold, redstone, lapis, diamond, emerald, ancient debris

scoreboard players set @s ec.tt_score 0

# Check each type: current stat > snapshot = at least 1 mined
# Coal
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_coal
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dcoal
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.coal
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Iron
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_iron
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_diron
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.iron
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Copper
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_cop
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dcop
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.copper
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Gold
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_gold
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dgold
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.gold
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Redstone
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_red
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dred
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.redstone
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Lapis
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_lapis
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dlapis
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.lapis
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Diamond
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_dia
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_ddia
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.diamond
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Emerald
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_emer
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_demer
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.emerald
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1

# Ancient Debris
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_debris
execute store result score #tt_snap_val ec.var run data get storage evercraft:trials t9.debris
scoreboard players operation #tt_temp ec.var -= #tt_snap_val ec.var
execute if score #tt_temp ec.var matches 1.. run scoreboard players add @s ec.tt_score 1
