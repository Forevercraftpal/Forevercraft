# Tab 3: Do Summon — Teleport a tamed animal to the player
# @s = player
# #bd_summon_uuid0/1 ec.temp = UUID of animal to summon

# Check summon limit
execute if score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_summon/check_summon_limit
execute unless score @s ec.bd_best_type matches 1.. run function evercraft:buddy/gui/tab_summon/check_summon_limit

# If limit exceeded, check_summon_limit returns fail
execute if score #bd_summon_ok ec.temp matches 0 run return fail

# Find the entity by UUID and teleport
execute as @e[type=#evercraft:tameable_companions,tag=ec.tame_protected,limit=1] run function evercraft:buddy/gui/tab_summon/try_tp

# Increment summon counter
scoreboard players add @s ec.bd_summon_ct 1

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your animal has been summoned!",color:"green"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.8 1.2
