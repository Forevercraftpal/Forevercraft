# Process Ornate Fishing Crate catch
# Requires Dream Rate >= 5 — downgrade to Rare if insufficient
clear @s iron_nugget[custom_data={fc_stat:true,fc_rarity:"ornate"}] 1
advancement revoke @s only evercraft:fishing/core/ornate/process

# Fishing Derby: bypass dream rate lock
execute if score #cal_event_id ec.var matches 4 run function evercraft:fishing/ref/advancement/ornate/grant
execute if score #cal_event_id ec.var matches 4 run return 0

# Check dream rate (scale 10: 5.0 dream rate = 50)
execute store result score @s ec.temp run attribute @s luck get 10
execute if score @s ec.temp matches 50.. run function evercraft:fishing/ref/advancement/ornate/grant
execute unless score @s ec.temp matches 50.. run function evercraft:fishing/ref/advancement/ornate/downgrade
