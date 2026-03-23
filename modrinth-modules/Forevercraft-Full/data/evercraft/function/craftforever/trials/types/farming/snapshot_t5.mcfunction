# T5 snapshot — Store starting values for all 6 crop types in storage
# Track 6 crop types for "grow all 6 crop types"
data modify storage evercraft:trials farm_t5 set value {}
execute store result storage evercraft:trials farm_t5.wheat int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_wheat
execute store result storage evercraft:trials farm_t5.carrot int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_carrot
execute store result storage evercraft:trials farm_t5.potato int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_potato
execute store result storage evercraft:trials farm_t5.beetroot int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_beetrt
execute store result storage evercraft:trials farm_t5.melon int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_melon
execute store result storage evercraft:trials farm_t5.pumpkin int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_pumpkn
