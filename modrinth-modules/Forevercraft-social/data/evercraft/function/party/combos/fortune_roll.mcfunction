# Shared Fortunes — Roll for bonus drop
# Run as the potential recipient, at their position
# 20% chance (random 1-5, succeed on 1)

execute store result score #fortune_roll ec.temp run random value 1..5
execute unless score #fortune_roll ec.temp matches 1 run return 0

# Give 3 XP levels as a bonus (simple, meaningful, no item duplication complexity)
experience add @s 3 levels
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10 force @s
tellraw @s [{text:"[Party] ",color:"gold"},{text:"Shared Fortunes! ",color:"aqua"},{text:"+3 XP levels",color:"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.2
