# Process Mythical Crate catch - SUPER RARE!
# Requires Dream Rate >= 25 — downgrade to Exquisite if insufficient
clear @s iron_nugget[custom_data={fc_stat:true,fc_rarity:"mythical"}] 1
advancement revoke @s only evercraft:fishing/core/mythical/process

# Fishing Derby: bypass dream rate lock
execute if score #cal_event_id ec.var matches 4 run function evercraft:fishing/ref/advancement/mythical/grant
execute if score #cal_event_id ec.var matches 4 run return 0

# Check dream rate (scale 10: 25.0 dream rate = 250)
execute store result score @s ec.temp run attribute @s luck get 10
execute if score @s ec.temp matches 250.. run function evercraft:fishing/ref/advancement/mythical/grant
execute unless score @s ec.temp matches 250.. run function evercraft:fishing/ref/advancement/mythical/downgrade
