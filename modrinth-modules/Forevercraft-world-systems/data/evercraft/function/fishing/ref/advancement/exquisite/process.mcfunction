# Process Exquisite Crate catch
# Requires Dream Rate >= 15 — downgrade to Ornate if insufficient
clear @s iron_nugget[custom_data={fc_stat:true,fc_rarity:"exquisite"}] 1
advancement revoke @s only evercraft:fishing/core/exquisite/process

# Fishing Derby: bypass dream rate lock
execute if score #cal_event_id ec.var matches 4 run function evercraft:fishing/ref/advancement/exquisite/grant
execute if score #cal_event_id ec.var matches 4 run return 0

# Check dream rate (scale 10 for decimal precision: 15.0 dream rate = 150)
execute store result score @s ec.temp run attribute @s luck get 10
execute if score @s ec.temp matches 150.. run function evercraft:fishing/ref/advancement/exquisite/grant
execute unless score @s ec.temp matches 150.. run function evercraft:fishing/ref/advancement/exquisite/downgrade
