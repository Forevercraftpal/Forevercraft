# Exchange buy: Random Particle for 100 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 100.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 100.",color:"red"}]
scoreboard players remove @s ec.dreamdust 100

# Roll random particle (1-19) and unlock via crate system
execute store result score @s adv.temp run random value 1..19
function evercraft:advantage/cosmetics/crate_unlock_particle

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
