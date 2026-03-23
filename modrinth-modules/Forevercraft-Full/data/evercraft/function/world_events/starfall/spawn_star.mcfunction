# Starfall Convergence — Spawn Fallen Star
# Gives a nether star with custom data to a random player
# Fallen stars can be traded to the Expeditionist for emerald blocks

# Tag a random player as the recipient (ensures same player for all effects)
tag @a[sort=random,limit=1,gamemode=!spectator] add STAR.recipient

# Give star and track achievement
execute as @a[tag=STAR.recipient] at @s run give @s minecraft:nether_star[custom_data={fallen_star:1b},custom_name={text:"Fallen Star",color:"#FFDD44",italic:false},lore=[{text:"A fragment of celestial energy",color:"light_purple",italic:true},{text:"",italic:false},{text:"Trade to the Expeditionist",color:"gray",italic:false},{text:"for 16 emerald blocks",color:"gray",italic:false}]] 1
execute as @a[tag=STAR.recipient] run scoreboard players add @s ach.fallen_stars 1

# Announce the drop
tellraw @a [{text:"  "},{text:"A fallen star descends nearby!",color:"#FFDD44",italic:true}]

# Impact effects at the receiving player
execute as @a[tag=STAR.recipient] at @s run particle minecraft:end_rod ~ ~3 ~ 3 5 3 0.1 30
execute as @a[tag=STAR.recipient] at @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.8 1.2

# Clean up tag
tag @a remove STAR.recipient
