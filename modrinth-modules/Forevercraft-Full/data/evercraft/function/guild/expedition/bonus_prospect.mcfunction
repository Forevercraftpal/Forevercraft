# Guild Expedition — Prospecting bonus: extra loot rolls
# @s = player, activity=5
# Mult is ×100 scale. 125-199: 1 extra, 200-299: 2 extra, 300-399: 3 extra, 400+: 4 extra
# NOTE: storage evercraft:pr_temp node_biome is set by complete_mine before this is called

execute unless score #expedition_activity ec.var matches 5 run return 0
execute unless score @s ec.guild_id matches 1.. run return 0
execute if score #expedition_mult ec.var matches ..124 run return 0

# Grant extra loot rolls based on multiplier (biome-routed)
execute if score #expedition_mult ec.var matches 125..199 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 200..299 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 200..299 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 300..399 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 300..399 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 300..399 run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 400.. run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 400.. run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 400.. run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp
execute if score #expedition_mult ec.var matches 400.. run function evercraft:prospect/give_biome_loot with storage evercraft:pr_temp

tellraw @s [{text:"  [Expedition] ",color:"gold"},{text:"Bonus ore yield!",color:"green"}]
