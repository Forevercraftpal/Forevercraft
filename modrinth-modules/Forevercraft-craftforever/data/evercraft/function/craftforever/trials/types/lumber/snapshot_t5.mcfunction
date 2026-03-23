# T5 snapshot — Store starting values for each log type in storage
# We need to track all 8 log types for "chop one of each"
data modify storage evercraft:trials lumber_t5 set value {}
execute store result storage evercraft:trials lumber_t5.oak int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_oaklog
execute store result storage evercraft:trials lumber_t5.spruce int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_sprlog
execute store result storage evercraft:trials lumber_t5.birch int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_birlog
execute store result storage evercraft:trials lumber_t5.jungle int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_junlog
execute store result storage evercraft:trials lumber_t5.acacia int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_acalog
execute store result storage evercraft:trials lumber_t5.dark_oak int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_drklog
execute store result storage evercraft:trials lumber_t5.mangrove int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_mnglog
execute store result storage evercraft:trials lumber_t5.cherry int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_chrlog
