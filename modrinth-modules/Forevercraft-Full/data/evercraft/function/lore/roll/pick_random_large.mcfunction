# Lore Roll: Random pick from pool with 4+ entries
# #lore_pool_size ec.temp has count, result in #lore_pick ec.temp
# Subtract 1 from size to get max index, store to storage, use macro
scoreboard players operation #lore_max ec.temp = #lore_pool_size ec.temp
scoreboard players remove #lore_max ec.temp 1
execute store result storage evercraft:lore temp.max_idx int 1 run scoreboard players get #lore_max ec.temp
function evercraft:lore/roll/random_range with storage evercraft:lore temp
