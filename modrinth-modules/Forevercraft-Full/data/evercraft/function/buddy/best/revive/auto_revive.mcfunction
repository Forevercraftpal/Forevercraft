# Best Buddy — Auto Revive
# @s = player whose best buddy revive timer just hit 0

# Remove the memento item
clear @s minecraft:echo_shard[custom_data~{buddy_memento:1b}] 1

# Determine mob type to summon
execute store result storage evercraft:buddy temp.revive_type int 1 run scoreboard players get @s ec.bd_best_type

# Summon the buddy entity at player's location
execute at @s run function evercraft:buddy/best/revive/summon_buddy with storage evercraft:buddy temp

# Mark as alive
scoreboard players set @s ec.bd_best_dead 0
scoreboard players set @s ec.bd_best_active 1
scoreboard players set @s ec.bd_best_revive 0

# Announcement
tellraw @s [{text:"\n"},{text:"[Buddy] ",color:"#FFD700"},{text:"Your Best Buddy has returned!",color:"green",bold:true},{text:"\n"},{text:"The bond between you could not be broken.",color:"yellow"},{text:"\n"}]

execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 0.8 1
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 40
