# Collect expedition loot from a RETURNED laborer
# Runs as: laborer entity (state 3), at laborer position. Player = @p

# Determine quality tier name and dispatch to loot table
# Quality 0-3: meager, 4-6: decent, 7-9: bountiful, 10-12: abundant, 13+: legendary

# Store quality for branching
scoreboard players set #lb_qtier ec.lb_temp 0
execute if score @s ec.lb_quality matches 4..6 run scoreboard players set #lb_qtier ec.lb_temp 1
execute if score @s ec.lb_quality matches 7..9 run scoreboard players set #lb_qtier ec.lb_temp 2
execute if score @s ec.lb_quality matches 10..12 run scoreboard players set #lb_qtier ec.lb_temp 3
execute if score @s ec.lb_quality matches 13.. run scoreboard players set #lb_qtier ec.lb_temp 4

# Dispatch to type-specific loot based on quality tier
execute if score @s ec.lb_type matches 1 run function evercraft:laborer/expedition/loot_miner
execute if score @s ec.lb_type matches 2 run function evercraft:laborer/expedition/loot_farmer
execute if score @s ec.lb_type matches 3 run function evercraft:laborer/expedition/loot_fisher
execute if score @s ec.lb_type matches 4 run function evercraft:laborer/expedition/loot_woodcutter
execute if score @s ec.lb_type matches 5 run function evercraft:laborer/expedition/loot_forager
execute if score @s ec.lb_type matches 6 run function evercraft:laborer/expedition/loot_prospector

# Coin reward (quality-scaled)
function evercraft:coins/laborer_reward

# Legendary expedition: 15% chance bonus Rare artifact (single roll)
execute if score #lb_qtier ec.lb_temp matches 4 store success score #lb_bonus ec.lb_temp if predicate {"condition":"minecraft:random_chance","chance":0.15}
execute if score #lb_bonus ec.lb_temp matches 1 as @p run loot give @s loot evercraft:artifacts/rare/main
execute if score #lb_bonus ec.lb_temp matches 1 as @p run tellraw @s [{text:"  ★ ",color:"aqua"},{text:"Rare Artifact",color:"aqua",bold:true},{text:" — Legendary Find!",color:"gold"}]

# Reset to IDLE state and record return time for cooldown
scoreboard players set @s ec.lb_state 0
execute store result score @s ec.lb_exp_start run time query gametime

# Feedback
playsound minecraft:entity.item.pickup master @p ~ ~ ~ 1 1
tellraw @p [{"text":"[Laborer] ","color":"gold"},{"text":"Loot collected! ","color":"green"},{"text":"(Quality: ","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_quality"},"color":"yellow"},{"text":")","color":"gray"}]

# Grant Artisan XP for collection
scoreboard players add @p ec.cf_xp 25
execute as @p run function evercraft:craftforever/artisan/check_levelup
