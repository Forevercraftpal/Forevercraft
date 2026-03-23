# T10 snapshot — Store starting values for weighted scoring
# All ore types tracked for value calculation
scoreboard players operation @s ec.tt_snap = @s ec.tt_s_coal
scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dcoal
scoreboard players operation @s ec.tt_snap2 = @s ec.tt_s_iron
scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_diron
scoreboard players operation @s ec.tt_snap3 = @s ec.tt_s_gold
scoreboard players operation @s ec.tt_snap3 += @s ec.tt_s_dgold
scoreboard players operation @s ec.tt_snap4 = @s ec.tt_s_dia
scoreboard players operation @s ec.tt_snap4 += @s ec.tt_s_ddia

# Store additional snapshots in storage for remaining types
data modify storage evercraft:trials t10 set value {}
execute store result storage evercraft:trials t10.cop int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_cop
execute store result storage evercraft:trials t10.lapis int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_lapis
execute store result storage evercraft:trials t10.red int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_red
execute store result storage evercraft:trials t10.emer int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_emer
execute store result storage evercraft:trials t10.debris int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_debris
