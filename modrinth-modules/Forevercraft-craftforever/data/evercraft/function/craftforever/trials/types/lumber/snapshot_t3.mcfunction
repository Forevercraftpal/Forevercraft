# T3 snapshot — Store starting values for each log type in storage
# We need to track 8 separate log types for "chop 3 different wood types"
data modify storage evercraft:trials lumber_t3 set value {}
execute store result storage evercraft:trials lumber_t3.oak int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_oaklog
execute store result storage evercraft:trials lumber_t3.spruce int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_sprlog
execute store result storage evercraft:trials lumber_t3.birch int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_birlog
execute store result storage evercraft:trials lumber_t3.jungle int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_junlog
execute store result storage evercraft:trials lumber_t3.acacia int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_acalog
execute store result storage evercraft:trials lumber_t3.dark_oak int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_drklog
execute store result storage evercraft:trials lumber_t3.mangrove int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_mnglog
execute store result storage evercraft:trials lumber_t3.cherry int 1 run scoreboard players operation #tt_temp ec.var = @s ec.tt_s_chrlog
