# T3 snapshot — Store starting values for each crop type in storage
# Track 3 crop types for "harvest 3 different types"
data modify storage evercraft:trials farm_t3 set value {}
execute store result storage evercraft:trials farm_t3.wheat int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_wheat
execute store result storage evercraft:trials farm_t3.carrot int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_carrot
execute store result storage evercraft:trials farm_t3.potato int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_potato
