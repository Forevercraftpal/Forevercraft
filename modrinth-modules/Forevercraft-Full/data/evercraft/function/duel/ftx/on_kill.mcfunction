# First-to-X — On Kill (runs as the "killed" player)
# Save victim, heal, respawn, credit killer

# Prevent actual death
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 3 4 true

# Totem animation
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Tag self as victim to identify the killer (handles simultaneous kills correctly)
tag @s add duel.ftx_victim

# Credit the killer (the OTHER duelist — identified by NOT being the victim)
execute as @a[tag=ec.duel_active_tag,tag=!duel.ftx_victim] run scoreboard players add @s ec.duel_kills 1

# Tag as respawning (skip health checks during respawn grace period)
tag @s add duel.ftx_respawning

# Increment round
execute as @a[tag=ec.duel_active_tag] run scoreboard players add @s ec.ftx_round 1

# Announce kill
tellraw @a[tag=ec.duel_active_tag] [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=ec.duel_active_tag,tag=!duel.ftx_victim]",color:"green"},{text:" scored a kill! (",color:"yellow"},{score:{name:"@a[tag=ec.duel_active_tag,tag=!duel.ftx_victim]",objective:"ec.duel_kills"},color:"white",bold:true},{text:"/",color:"gray"},{score:{name:"@s",objective:"ec.duel_target"},color:"white"},{text:")",color:"yellow"}]
playsound minecraft:entity.experience_orb.pickup master @a[tag=ec.duel_active_tag] ~ ~ ~ 0.5 1.5

# Check if killer reached target
execute as @a[tag=ec.duel_active_tag,tag=!duel.ftx_victim] if score @s ec.duel_kills >= @s ec.duel_target run function evercraft:duel/ftx/win
# Bail if duel was resolved (win → cleanup sets #duel_active to 0)
execute unless score #duel_active ec.var matches 1 run return 0

# Clear victim tag
tag @s remove duel.ftx_victim

# Respawn victim: teleport back to their spawn side
# Challenger goes to spawn_a, accepter goes to spawn_b
execute if entity @s[tag=duel.challenger_confirmed] at @e[type=marker,tag=duel.ftx_spawn_a,limit=1] run tp @s ~ ~ ~
execute unless entity @s[tag=duel.challenger_confirmed] at @e[type=marker,tag=duel.ftx_spawn_b,limit=1] run tp @s ~ ~ ~

# Heal both players
effect give @a[tag=ec.duel_active_tag] minecraft:instant_health 1 3 true
effect give @a[tag=ec.duel_active_tag] minecraft:saturation 1 5 true

# Clear respawning tag after brief delay (use resistance duration as grace period)
# Remove immediately — the 3s resistance protects them
tag @s remove duel.ftx_respawning
