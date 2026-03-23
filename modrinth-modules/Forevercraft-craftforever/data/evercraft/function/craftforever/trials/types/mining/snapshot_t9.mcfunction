# T9 snapshot — Store starting values for each ore type in storage
# We need to track 9 separate ore types for "mine one of each"
data modify storage evercraft:trials t9 set value {}
execute store result storage evercraft:trials t9.coal int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_coal
execute store result storage evercraft:trials t9.iron int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_iron
execute store result storage evercraft:trials t9.copper int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_cop
execute store result storage evercraft:trials t9.gold int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_gold
execute store result storage evercraft:trials t9.redstone int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_red
execute store result storage evercraft:trials t9.lapis int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_lapis
execute store result storage evercraft:trials t9.diamond int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_dia
execute store result storage evercraft:trials t9.emerald int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_emer
execute store result storage evercraft:trials t9.debris int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_debris
