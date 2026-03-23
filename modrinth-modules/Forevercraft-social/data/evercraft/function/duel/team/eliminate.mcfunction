# Team Duel — Eliminate Player (runs as the eliminated player)
# Save from death + mark as eliminated

# Heal to prevent actual death
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 60 4 true

# Totem animation
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Mark eliminated
tag @s add duel.eliminated

# Decrement team alive count
execute if score @s ec.duel_team_num matches 1 run scoreboard players remove #duel_t1_alive ec.var 1
execute if score @s ec.duel_team_num matches 2 run scoreboard players remove #duel_t2_alive ec.var 1

# Set spectator so they can watch
gamemode spectator @s

# Effects
title @s times 5 40 15
title @s title {text:"ELIMINATED",color:"red",bold:true}
title @s subtitle {text:"Watch your teammate fight on!",color:"gray"}

# Announce
tellraw @a[tag=ec.duel_active_tag] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"red"},{text:" has been eliminated!",color:"yellow"}]
playsound minecraft:entity.wither.death master @a[tag=ec.duel_active_tag] ~ ~ ~ 0.3 0.5
